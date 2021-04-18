/*********************************************************************
*                SEGGER Microcontroller GmbH & Co. KG                *
*        Solutions for real time microcontroller applications        *
**********************************************************************
*                                                                    *
*        (c) 1996 - 2018  SEGGER Microcontroller GmbH & Co. KG       *
*                                                                    *
*        Internet: www.segger.com    Support:  support@segger.com    *
*                                                                    *
**********************************************************************

** emWin V5.46 - Graphical user interface for embedded applications **
All  Intellectual Property rights  in the Software belongs to  SEGGER.
emWin is protected by  international copyright laws.  Knowledge of the
source code may not be used to write a similar product.  This file may
only be used in accordance with the following terms:

The software has been licensed to  ARM LIMITED whose registered office
is situated at  110 Fulbourn Road,  Cambridge CB1 9NJ,  England solely
for  the  purposes  of  creating  libraries  for  ARM7, ARM9, Cortex-M
series,  and   Cortex-R4   processor-based  devices,  sublicensed  and
distributed as part of the  MDK-ARM  Professional  under the terms and
conditions  of  the   End  User  License  supplied  with  the  MDK-ARM
Professional. 
Full source code is available at: www.segger.com

We appreciate your understanding and fairness.
----------------------------------------------------------------------
Licensing information
Licensor:                 SEGGER Software GmbH
Licensed to:              ARM Ltd, 110 Fulbourn Road, CB1 9NJ Cambridge, UK
Licensed SEGGER software: emWin
License number:           GUI-00181
License model:            LES-SLA-20007, Agreement, effective since October 1st 2011 
Licensed product:         MDK-ARM Professional
Licensed platform:        ARM7/9, Cortex-M/R4
Licensed number of seats: -
----------------------------------------------------------------------
File        : example.c
Purpose     : Main program Template
---------------------------END-OF-HEADER------------------------------
*/

#include "main.h"
#include "GUI.h"
#include "DIALOG.h"

#include "rl_usb.h"			
#include "USBH_MSC.h"

extern WM_HWIN CreateImageViewerDialog (void);

#ifdef RTE_Compiler_EventRecorder
#include "EventRecorder.h"
#endif

/*----------------------------------------------------------------------------
 * GUI Thread
 *---------------------------------------------------------------------------*/
#define GUI_THREAD_STK_SZ		(2048U)
static void				 GUIThread (void *argument);				  /* thread function */
static osThreadId_t GUIThread_tid;											/* thread id */
static uint64_t		 GUIThread_stk[GUI_THREAD_STK_SZ/8];  /* thread stack */

static const osThreadAttr_t GUIThread_attr = {
	.stack_mem	= &GUIThread_stk[0],
	.stack_size = sizeof(GUIThread_stk),
	.priority	 = osPriorityIdle 
};

int Init_GUIThread (void) {

	GUIThread_tid = osThreadNew(GUIThread, NULL, &GUIThread_attr);
	if (GUIThread_tid == NULL) {
		return(-1);
	}

	return(0);
}

__NO_RETURN static void GUIThread (void *argument) {
	(void)argument;

	GUI_Init();					 /* Initialize the Graphics Component */

	/* Add GUI setup code here */
	CreateImageViewerDialog();
	
	while (1) {
		
		/* All GUI related activities might only be called from here */
		
		GUI_TOUCH_Exec();
		GUI_Exec();				 /* Execute all GUI jobs ... Return 0 if nothing was done. */
		GUI_X_ExecIdle();	 /* Nothing left to do for the moment ... Idle processing */
	}
}

// Main stack size must be multiple of 8 Bytes
#define APP_MAIN_STK_SZ (1024U)
uint64_t app_main_stk[APP_MAIN_STK_SZ / 8];
const osThreadAttr_t app_main_attr = {
  .stack_mem  = &app_main_stk[0],
  .stack_size = sizeof(app_main_stk)
};

/*----------------------------------------------------------------------------
 * Application main thread
 *---------------------------------------------------------------------------*/
__NO_RETURN void app_main (void *argument) {
	
	//USB Variables
	usbStatus usb_status;								 // USB status
	int32_t	 msc_status;								 // MSC status
	FILE		 *f;												 // Pointer to stream object
	uint8_t	 con = 0U;									 // Connection status of MSC(s)
	
#ifdef RTE_Compiler_EventRecorder
	EventRecorderInitialize(0, 1);
	EventRecorderEnable (EventRecordError, 0xB0U, 0xB5U);	/* USBH Error Events */
	EventRecorderEnable (EventRecordAll	, 0xB0U, 0xB0U);	/* USBH Core Events */
	EventRecorderEnable (EventRecordAll	, 0xB5U, 0xB5U);	/* USBH MSC Events */
#endif
	
  (void)argument;

	osThreadNew(GUIThread, NULL, &GUIThread_attr);

	usb_status = USBH_Initialize(0U);		 // Initialize USB Host 0

	char text[] = "Cámara Digital, Laura Rosas Morandeira, Universidad Latina";
	
	if (usb_status != usbOK) {
		for (;;) {}												 // Handle USB Host 0 init failure
	}

	for (;;) {
		msc_status = USBH_MSC_DriveGetMediaStatus("U0:");	 // Get MSC device status
		if (msc_status == USBH_MSC_OK) {
			
			HAL_GPIO_TogglePin(GPIOG,GPIO_PIN_13|GPIO_PIN_14);
				
			if (con == 0U) {									// If stick was not connected previously
				con = 1U;											 // Stick got connected
				msc_status = USBH_MSC_DriveMount("U0:");
				if (msc_status != USBH_MSC_OK) {
					
					continue;										 // Handle U0: mount failure
				}
				f = fopen("Test.txt", "w");			// Open/create file for writing
				
				if (f == NULL) {
					continue;										 // Handle file opening/creation failure
				}
				fprintf(f, "%s", text);
				fclose (f);										 // Close file
				
				msc_status = USBH_MSC_DriveUnmount("U0:");
				
				if (msc_status != USBH_MSC_OK) {
					continue;										 // Handle U0: dismount failure
				}
			}
			
		} else {
			if (con == 1U) {									// If stick was connected previously
				con = 0U;											 // Stick got disconnected
			}
		}
		osDelay(100U);
	}
}
