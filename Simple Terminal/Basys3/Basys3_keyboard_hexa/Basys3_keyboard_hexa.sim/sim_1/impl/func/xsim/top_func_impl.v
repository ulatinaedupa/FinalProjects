// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Aug 25 15:44:34 2019
// Host        : DESKTOP-JHJ1N6E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Datos/Downloads/Basys-3-Keyboard-2018.2-3/vivado_proj/Basys-3-Keyboard.sim/sim_1/impl/func/xsim/top_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PS2Receiver
   (clk,
    kclk,
    kdata,
    keycode,
    oflag);
  input clk;
  input kclk;
  input kdata;
  output [15:0]keycode;
  output oflag;

  wire clk;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire [3:0]cnt_reg;
  wire \datacur[0]_i_1_n_0 ;
  wire \datacur[1]_i_1_n_0 ;
  wire \datacur[2]_i_1_n_0 ;
  wire \datacur[3]_i_1_n_0 ;
  wire \datacur[4]_i_1_n_0 ;
  wire \datacur[5]_i_1_n_0 ;
  wire \datacur[6]_i_1_n_0 ;
  wire \datacur[7]_i_1_n_0 ;
  wire \datacur_reg_n_0_[0] ;
  wire \datacur_reg_n_0_[1] ;
  wire \datacur_reg_n_0_[2] ;
  wire \datacur_reg_n_0_[3] ;
  wire \datacur_reg_n_0_[4] ;
  wire \datacur_reg_n_0_[5] ;
  wire \datacur_reg_n_0_[6] ;
  wire \datacur_reg_n_0_[7] ;
  wire flag;
  wire flag_i_1_n_0;
  wire kclk;
  wire kclkf;
  wire kdata;
  wire kdataf;
  wire [15:0]keycode;
  wire \keycode[15]_i_1_n_0 ;
  wire oflag;
  wire pflag;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h575F)) 
    \cnt[3]_i_2 
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .O(cnt));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_3 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(\cnt[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[0] 
       (.C(kclkf),
        .CE(cnt),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[1] 
       (.C(kclkf),
        .CE(cnt),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg[1]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[2] 
       (.C(kclkf),
        .CE(cnt),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg[2]),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnt_reg[3] 
       (.C(kclkf),
        .CE(cnt),
        .D(\cnt[3]_i_3_n_0 ),
        .Q(cnt_reg[3]),
        .R(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[0]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[0] ),
        .O(\datacur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \datacur[1]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[1] ),
        .O(\datacur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \datacur[2]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[2] ),
        .O(\datacur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \datacur[3]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[3] ),
        .O(\datacur[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[4]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[4] ),
        .O(\datacur[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \datacur[5]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[5] ),
        .O(\datacur[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \datacur[6]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[3]),
        .I5(\datacur_reg_n_0_[6] ),
        .O(\datacur[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \datacur[7]_i_1 
       (.I0(kdataf),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(\datacur_reg_n_0_[7] ),
        .O(\datacur[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[0] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[0]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[1] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[1]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[2] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[2]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[3] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[3]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[4] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[4]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[5] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[5]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[6] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[6]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \datacur_reg[7] 
       (.C(kclkf),
        .CE(1'b1),
        .D(\datacur[7]_i_1_n_0 ),
        .Q(\datacur_reg_n_0_[7] ),
        .R(1'b0));
  (* COUNT_MAX = "19" *) 
  (* COUNT_WIDTH = "5" *) 
  debouncer__1 db_clk
       (.I(kclk),
        .O(kclkf),
        .clk(clk));
  (* COUNT_MAX = "19" *) 
  (* COUNT_WIDTH = "5" *) 
  debouncer db_data
       (.I(kdata),
        .O(kdataf),
        .clk(clk));
  LUT5 #(
    .INIT(32'hEFFF0400)) 
    flag_i_1
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .I4(flag),
        .O(flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    flag_reg
       (.C(kclkf),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \keycode[15]_i_1 
       (.I0(flag),
        .I1(pflag),
        .O(\keycode[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[0] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[0] ),
        .Q(keycode[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[10] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[2]),
        .Q(keycode[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[11] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[3]),
        .Q(keycode[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[12] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[4]),
        .Q(keycode[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[13] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[5]),
        .Q(keycode[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[14] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[6]),
        .Q(keycode[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[15] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[7]),
        .Q(keycode[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[1] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[1] ),
        .Q(keycode[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[2] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[2] ),
        .Q(keycode[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[3] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[3] ),
        .Q(keycode[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[4] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[4] ),
        .Q(keycode[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[5] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[5] ),
        .Q(keycode[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[6] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[6] ),
        .Q(keycode[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[7] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(\datacur_reg_n_0_[7] ),
        .Q(keycode[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[8] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[0]),
        .Q(keycode[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycode_reg[9] 
       (.C(clk),
        .CE(\keycode[15]_i_1_n_0 ),
        .D(keycode[1]),
        .Q(keycode[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    oflag_reg
       (.C(clk),
        .CE(1'b1),
        .D(\keycode[15]_i_1_n_0 ),
        .Q(oflag),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    pflag_reg
       (.C(clk),
        .CE(1'b1),
        .D(flag),
        .Q(pflag),
        .R(1'b0));
endmodule

(* NBYTES = "2" *) 
module bin2ascii
   (I,
    O);
  input [15:0]I;
  output [31:0]O;

  wire [15:0]I;
  wire [31:0]O;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h36CC)) 
    \O[0]_INST_0 
       (.I0(I[1]),
        .I1(I[0]),
        .I2(I[2]),
        .I3(I[3]),
        .O(O[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCCC4)) 
    \O[10]_INST_0 
       (.I0(I[7]),
        .I1(I[6]),
        .I2(I[5]),
        .I3(I[4]),
        .O(O[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \O[11]_INST_0 
       (.I0(I[7]),
        .I1(I[6]),
        .I2(I[5]),
        .O(O[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \O[12]_INST_0 
       (.I0(I[5]),
        .I1(I[6]),
        .I2(I[7]),
        .O(O[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \O[14]_INST_0 
       (.I0(I[7]),
        .I1(I[6]),
        .I2(I[5]),
        .O(O[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h36CC)) 
    \O[16]_INST_0 
       (.I0(I[9]),
        .I1(I[8]),
        .I2(I[10]),
        .I3(I[11]),
        .O(O[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF058)) 
    \O[17]_INST_0 
       (.I0(I[11]),
        .I1(I[10]),
        .I2(I[9]),
        .I3(I[8]),
        .O(O[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCCC4)) 
    \O[18]_INST_0 
       (.I0(I[11]),
        .I1(I[10]),
        .I2(I[9]),
        .I3(I[8]),
        .O(O[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \O[19]_INST_0 
       (.I0(I[11]),
        .I1(I[10]),
        .I2(I[9]),
        .O(O[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF058)) 
    \O[1]_INST_0 
       (.I0(I[3]),
        .I1(I[2]),
        .I2(I[1]),
        .I3(I[0]),
        .O(O[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \O[20]_INST_0 
       (.I0(I[9]),
        .I1(I[10]),
        .I2(I[11]),
        .O(O[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \O[22]_INST_0 
       (.I0(I[11]),
        .I1(I[10]),
        .I2(I[9]),
        .O(O[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h36CC)) 
    \O[24]_INST_0 
       (.I0(I[13]),
        .I1(I[12]),
        .I2(I[14]),
        .I3(I[15]),
        .O(O[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF058)) 
    \O[25]_INST_0 
       (.I0(I[15]),
        .I1(I[14]),
        .I2(I[13]),
        .I3(I[12]),
        .O(O[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hCCC4)) 
    \O[26]_INST_0 
       (.I0(I[15]),
        .I1(I[14]),
        .I2(I[13]),
        .I3(I[12]),
        .O(O[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \O[27]_INST_0 
       (.I0(I[15]),
        .I1(I[14]),
        .I2(I[13]),
        .O(O[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \O[28]_INST_0 
       (.I0(I[13]),
        .I1(I[14]),
        .I2(I[15]),
        .O(O[28]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCCC4)) 
    \O[2]_INST_0 
       (.I0(I[3]),
        .I1(I[2]),
        .I2(I[1]),
        .I3(I[0]),
        .O(O[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \O[30]_INST_0 
       (.I0(I[15]),
        .I1(I[14]),
        .I2(I[13]),
        .O(O[30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \O[3]_INST_0 
       (.I0(I[3]),
        .I1(I[2]),
        .I2(I[1]),
        .O(O[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \O[4]_INST_0 
       (.I0(I[1]),
        .I1(I[2]),
        .I2(I[3]),
        .O(O[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \O[6]_INST_0 
       (.I0(I[3]),
        .I1(I[2]),
        .I2(I[1]),
        .O(O[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h36CC)) 
    \O[8]_INST_0 
       (.I0(I[5]),
        .I1(I[4]),
        .I2(I[6]),
        .I3(I[7]),
        .O(O[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF058)) 
    \O[9]_INST_0 
       (.I0(I[7]),
        .I1(I[6]),
        .I2(I[5]),
        .I3(I[4]),
        .O(O[9]));
endmodule

(* COUNT_MAX = "19" *) (* COUNT_WIDTH = "5" *) 
module debouncer
   (clk,
    I,
    O);
  input clk;
  input I;
  output O;

  wire I;
  wire Iv;
  wire Iv_i_1_n_0;
  wire O;
  wire O_i_1_n_0;
  wire O_i_2_n_0;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire [4:0]count_reg;

  LUT2 #(
    .INIT(4'h6)) 
    Iv_i_1
       (.I0(I),
        .I1(Iv),
        .O(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(clk),
        .CE(Iv_i_1_n_0),
        .D(I),
        .Q(Iv),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF80)) 
    O_i_1
       (.I0(I),
        .I1(Iv),
        .I2(O_i_2_n_0),
        .I3(O),
        .O(O_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    O_i_2
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(O_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(clk),
        .CE(1'b1),
        .D(O_i_1_n_0),
        .Q(O),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(\count[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[4]_i_2_n_0 ),
        .Q(count_reg[4]),
        .R(Iv_i_1_n_0));
endmodule

(* COUNT_MAX = "19" *) (* COUNT_WIDTH = "5" *) (* ORIG_REF_NAME = "debouncer" *) 
module debouncer__1
   (clk,
    I,
    O);
  input clk;
  input I;
  output O;

  wire I;
  wire Iv;
  wire Iv_i_1_n_0;
  wire O;
  wire O_i_1_n_0;
  wire O_i_2_n_0;
  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire [4:0]count_reg;

  LUT2 #(
    .INIT(4'h6)) 
    Iv_i_1
       (.I0(I),
        .I1(Iv),
        .O(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Iv_reg
       (.C(clk),
        .CE(Iv_i_1_n_0),
        .D(I),
        .Q(Iv),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEF80)) 
    O_i_1
       (.I0(I),
        .I1(Iv),
        .I2(O_i_2_n_0),
        .I3(O),
        .O(O_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    O_i_2
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(O_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    O_reg
       (.C(clk),
        .CE(1'b1),
        .D(O_i_1_n_0),
        .Q(O),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(\count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \count[4]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(\count[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg[0]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg[1]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg[3]),
        .R(Iv_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(\count[4]_i_1_n_0 ),
        .D(\count[4]_i_2_n_0 ),
        .Q(count_reg[4]),
        .R(Iv_i_1_n_0));
endmodule

(* ECO_CHECKSUM = "5b0c63dc" *) 
(* NotValidForBitStream *)
module top
   (clk,
    reset,
    PS2Data,
    PS2Clk,
    tx,
    Anode_Activate,
    LED_out);
  input clk;
  input reset;
  input PS2Data;
  input PS2Clk;
  output tx;
  output [3:0]Anode_Activate;
  output [6:0]LED_out;

  wire [3:0]Anode_Activate;
  wire CLK50MHZ;
  wire CLK50MHZ_BUFG;
  wire CLK50MHZ_i_1_n_0;
  wire [6:0]LED_out;
  wire [0:0]LED_out_OBUF;
  wire \LED_out_OBUF[6]_inst_i_2_n_0 ;
  wire PS2Clk;
  wire PS2Clk_IBUF;
  wire PS2Data;
  wire PS2Data_IBUF;
  wire [1:0]bcount;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire flag;
  wire [15:0]keycodev;
  wire \keycodev[15]_i_11_n_0 ;
  wire \keycodev[15]_i_12_n_0 ;
  wire \keycodev[15]_i_13_n_0 ;
  wire \keycodev[15]_i_14_n_0 ;
  wire \keycodev[15]_i_15_n_0 ;
  wire \keycodev[15]_i_16_n_0 ;
  wire \keycodev[15]_i_1_n_0 ;
  wire \keycodev[15]_i_2_n_0 ;
  wire \keycodev[15]_i_3_n_0 ;
  wire \keycodev[15]_i_4_n_0 ;
  wire \keycodev[15]_i_6_n_0 ;
  wire \keycodev[15]_i_7_n_0 ;
  wire \keycodev[15]_i_8_n_0 ;
  wire \keycodev[15]_i_9_n_0 ;
  wire \keycodev_reg[15]_i_10_n_0 ;
  wire \keycodev_reg[15]_i_5_n_2 ;
  wire [7:0]p_0_in;
  wire start;
  wire [30:0]tbuf;
  wire [6:0]tbus;
  wire tready;
  wire tstart;
  wire tx;
  wire tx_OBUF;
  wire tx_con_i_3_n_0;
  wire tx_con_i_4_n_0;
  wire tx_con_i_5_n_0;
  wire tx_con_i_6_n_0;
  wire uut_n_10;
  wire uut_n_11;
  wire uut_n_12;
  wire uut_n_13;
  wire uut_n_14;
  wire uut_n_15;
  wire uut_n_8;
  wire uut_n_9;
  wire [31:5]NLW_conv_O_UNCONNECTED;
  wire [7:7]NLW_get_tx_tbus_UNCONNECTED;
  wire [2:0]\NLW_keycodev_reg[15]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_keycodev_reg[15]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_keycodev_reg[15]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_keycodev_reg[15]_i_5_O_UNCONNECTED ;
  wire NLW_tx_con_ready_UNCONNECTED;
  wire [2:2]NLW_tx_con_bcount_UNCONNECTED;
  wire [31:5]NLW_tx_con_tbuf_UNCONNECTED;
  wire [7:7]NLW_tx_con_tbus_UNCONNECTED;
PULLUP pullup_PS2Clk
       (.O(PS2Clk));
PULLUP pullup_PS2Data
       (.O(PS2Data));

  OBUF \Anode_Activate_OBUF[0]_inst 
       (.I(1'b1),
        .O(Anode_Activate[0]));
  OBUF \Anode_Activate_OBUF[1]_inst 
       (.I(1'b1),
        .O(Anode_Activate[1]));
  OBUF \Anode_Activate_OBUF[2]_inst 
       (.I(1'b1),
        .O(Anode_Activate[2]));
  OBUF \Anode_Activate_OBUF[3]_inst 
       (.I(1'b0),
        .O(Anode_Activate[3]));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG CLK50MHZ_BUFG_inst
       (.I(CLK50MHZ),
        .O(CLK50MHZ_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    CLK50MHZ_i_1
       (.I0(CLK50MHZ_BUFG),
        .O(CLK50MHZ_i_1_n_0));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  FDRE #(
    .INIT(1'b0)) 
    CLK50MHZ_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CLK50MHZ_i_1_n_0),
        .Q(CLK50MHZ),
        .R(1'b0));
  OBUF \LED_out_OBUF[0]_inst 
       (.I(LED_out_OBUF),
        .O(LED_out[0]));
  OBUF \LED_out_OBUF[1]_inst 
       (.I(LED_out_OBUF),
        .O(LED_out[1]));
  OBUF \LED_out_OBUF[2]_inst 
       (.I(LED_out_OBUF),
        .O(LED_out[2]));
  OBUF \LED_out_OBUF[3]_inst 
       (.I(LED_out_OBUF),
        .O(LED_out[3]));
  OBUF \LED_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(LED_out[4]));
  OBUF \LED_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(LED_out[5]));
  OBUF \LED_out_OBUF[6]_inst 
       (.I(LED_out_OBUF),
        .O(LED_out[6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \LED_out_OBUF[6]_inst_i_1 
       (.I0(tbus[5]),
        .I1(tbus[0]),
        .I2(tbus[6]),
        .I3(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .O(LED_out_OBUF));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \LED_out_OBUF[6]_inst_i_2 
       (.I0(tbus[2]),
        .I1(tbus[3]),
        .I2(tbus[4]),
        .I3(tbus[1]),
        .O(\LED_out_OBUF[6]_inst_i_2_n_0 ));
  IBUF PS2Clk_IBUF_inst
       (.I(PS2Clk),
        .O(PS2Clk_IBUF));
  IBUF PS2Data_IBUF_inst
       (.I(PS2Data),
        .O(PS2Data_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* NBYTES = "2" *) 
  bin2ascii conv
       (.I(keycodev),
        .O({NLW_conv_O_UNCONNECTED[31],tbuf}));
  (* CD_MAX = "10416" *) 
  (* CD_WIDTH = "16" *) 
  uart_tx get_tx
       (.clk(clk_IBUF_BUFG),
        .ready(tready),
        .start(tstart),
        .tbus({NLW_get_tx_tbus_UNCONNECTED[7],tbus}),
        .tx(tx_OBUF));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \keycodev[15]_i_1 
       (.I0(\keycodev[15]_i_2_n_0 ),
        .I1(\keycodev[15]_i_3_n_0 ),
        .I2(\keycodev[15]_i_4_n_0 ),
        .I3(tx_con_i_3_n_0),
        .I4(\keycodev_reg[15]_i_5_n_2 ),
        .I5(\keycodev[15]_i_6_n_0 ),
        .O(\keycodev[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \keycodev[15]_i_11 
       (.I0(keycodev[15]),
        .I1(p_0_in[7]),
        .O(\keycodev[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_12 
       (.I0(p_0_in[4]),
        .I1(keycodev[12]),
        .I2(p_0_in[5]),
        .I3(keycodev[13]),
        .I4(keycodev[14]),
        .I5(p_0_in[6]),
        .O(\keycodev[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_13 
       (.I0(p_0_in[1]),
        .I1(keycodev[9]),
        .I2(p_0_in[2]),
        .I3(keycodev[10]),
        .I4(keycodev[11]),
        .I5(p_0_in[3]),
        .O(\keycodev[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_14 
       (.I0(keycodev[8]),
        .I1(p_0_in[0]),
        .I2(uut_n_8),
        .I3(keycodev[7]),
        .I4(uut_n_9),
        .I5(keycodev[6]),
        .O(\keycodev[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_15 
       (.I0(keycodev[5]),
        .I1(uut_n_10),
        .I2(uut_n_11),
        .I3(keycodev[4]),
        .I4(uut_n_12),
        .I5(keycodev[3]),
        .O(\keycodev[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_16 
       (.I0(keycodev[2]),
        .I1(uut_n_13),
        .I2(uut_n_14),
        .I3(keycodev[1]),
        .I4(uut_n_15),
        .I5(keycodev[0]),
        .O(\keycodev[15]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \keycodev[15]_i_2 
       (.I0(keycodev[6]),
        .I1(uut_n_9),
        .I2(keycodev[7]),
        .I3(uut_n_8),
        .O(\keycodev[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \keycodev[15]_i_3 
       (.I0(keycodev[14]),
        .I1(keycodev[15]),
        .I2(keycodev[12]),
        .I3(keycodev[13]),
        .I4(\keycodev[15]_i_7_n_0 ),
        .O(\keycodev[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \keycodev[15]_i_4 
       (.I0(\keycodev[15]_i_8_n_0 ),
        .I1(\keycodev[15]_i_9_n_0 ),
        .O(\keycodev[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \keycodev[15]_i_6 
       (.I0(tx_con_i_6_n_0),
        .I1(uut_n_14),
        .I2(uut_n_15),
        .I3(uut_n_12),
        .I4(uut_n_13),
        .I5(flag),
        .O(\keycodev[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \keycodev[15]_i_7 
       (.I0(keycodev[9]),
        .I1(keycodev[8]),
        .I2(keycodev[11]),
        .I3(keycodev[10]),
        .O(\keycodev[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_8 
       (.I0(keycodev[2]),
        .I1(uut_n_13),
        .I2(uut_n_14),
        .I3(keycodev[1]),
        .I4(uut_n_15),
        .I5(keycodev[0]),
        .O(\keycodev[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \keycodev[15]_i_9 
       (.I0(keycodev[5]),
        .I1(uut_n_10),
        .I2(uut_n_11),
        .I3(keycodev[4]),
        .I4(uut_n_12),
        .I5(keycodev[3]),
        .O(\keycodev[15]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_15),
        .Q(keycodev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(keycodev[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(keycodev[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(keycodev[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(keycodev[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(keycodev[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(keycodev[15]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \keycodev_reg[15]_i_10 
       (.CI(1'b0),
        .CO({\keycodev_reg[15]_i_10_n_0 ,\NLW_keycodev_reg[15]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_keycodev_reg[15]_i_10_O_UNCONNECTED [3:0]),
        .S({\keycodev[15]_i_13_n_0 ,\keycodev[15]_i_14_n_0 ,\keycodev[15]_i_15_n_0 ,\keycodev[15]_i_16_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \keycodev_reg[15]_i_5 
       (.CI(\keycodev_reg[15]_i_10_n_0 ),
        .CO({\NLW_keycodev_reg[15]_i_5_CO_UNCONNECTED [3:2],\keycodev_reg[15]_i_5_n_2 ,\NLW_keycodev_reg[15]_i_5_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_keycodev_reg[15]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\keycodev[15]_i_11_n_0 ,\keycodev[15]_i_12_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_14),
        .Q(keycodev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_13),
        .Q(keycodev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_12),
        .Q(keycodev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_11),
        .Q(keycodev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_10),
        .Q(keycodev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_9),
        .Q(keycodev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(uut_n_8),
        .Q(keycodev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(keycodev[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \keycodev_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\keycodev[15]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(keycodev[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\keycodev[15]_i_1_n_0 ),
        .Q(start),
        .R(1'b0));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  uart_buf_con tx_con
       (.bcount({NLW_tx_con_bcount_UNCONNECTED[2],bcount}),
        .clk(clk_IBUF_BUFG),
        .ready(NLW_tx_con_ready_UNCONNECTED),
        .start(start),
        .tbuf({NLW_tx_con_tbuf_UNCONNECTED[31],tbuf}),
        .tbus({NLW_tx_con_tbus_UNCONNECTED[7],tbus}),
        .tready(tready),
        .tstart(tstart));
  LUT2 #(
    .INIT(4'h1)) 
    tx_con_i_1
       (.I0(tx_con_i_3_n_0),
        .I1(tx_con_i_4_n_0),
        .O(bcount[1]));
  LUT2 #(
    .INIT(4'h2)) 
    tx_con_i_2
       (.I0(tx_con_i_3_n_0),
        .I1(tx_con_i_4_n_0),
        .O(bcount[0]));
  LUT5 #(
    .INIT(32'h00000008)) 
    tx_con_i_3
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(tx_con_i_5_n_0),
        .O(tx_con_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    tx_con_i_4
       (.I0(uut_n_13),
        .I1(uut_n_12),
        .I2(uut_n_15),
        .I3(uut_n_14),
        .I4(tx_con_i_6_n_0),
        .O(tx_con_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    tx_con_i_5
       (.I0(p_0_in[5]),
        .I1(p_0_in[4]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .O(tx_con_i_5_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    tx_con_i_6
       (.I0(uut_n_10),
        .I1(uut_n_11),
        .I2(uut_n_8),
        .I3(uut_n_9),
        .O(tx_con_i_6_n_0));
  PS2Receiver uut
       (.clk(CLK50MHZ_BUFG),
        .kclk(PS2Clk_IBUF),
        .kdata(PS2Data_IBUF),
        .keycode({p_0_in,uut_n_8,uut_n_9,uut_n_10,uut_n_11,uut_n_12,uut_n_13,uut_n_14,uut_n_15}),
        .oflag(flag));
endmodule

module uart_buf_con
   (clk,
    bcount,
    tbuf,
    start,
    ready,
    tstart,
    tready,
    tbus);
  input clk;
  input [2:0]bcount;
  input [31:0]tbuf;
  input start;
  output ready;
  output tstart;
  input tready;
  output [7:0]tbus;

  wire [2:0]bcount;
  wire clk;
  wire [6:0]p_0_in;
  wire [6:0]p_1_in;
  wire [6:0]p_2_in;
  wire pbuf;
  wire \pbuf_reg_n_0_[0] ;
  wire \pbuf_reg_n_0_[1] ;
  wire \pbuf_reg_n_0_[2] ;
  wire \pbuf_reg_n_0_[3] ;
  wire \pbuf_reg_n_0_[4] ;
  wire \pbuf_reg_n_0_[6] ;
  wire running;
  wire running_i_1_n_0;
  wire sel;
  wire \sel[0]_i_1_n_0 ;
  wire \sel[1]_i_1_n_0 ;
  wire \sel[2]_i_2_n_0 ;
  wire \sel_reg_n_0_[0] ;
  wire \sel_reg_n_0_[1] ;
  wire \sel_reg_n_0_[2] ;
  wire start;
  wire [31:0]tbuf;
  wire [7:0]tbus;
  wire \tbus[0]_INST_0_i_1_n_0 ;
  wire \tbus[1]_INST_0_i_1_n_0 ;
  wire \tbus[2]_INST_0_i_1_n_0 ;
  wire \tbus[3]_INST_0_i_1_n_0 ;
  wire \tbus[5]_INST_0_i_1_n_0 ;
  wire \tbus[6]_INST_0_i_1_n_0 ;
  wire tready;
  wire tstart;
  wire tstart_i_1_n_0;
  wire tstart_i_2_n_0;
  wire tstart_i_3_n_0;

  LUT4 #(
    .INIT(16'h2220)) 
    \pbuf[30]_i_1 
       (.I0(tready),
        .I1(running),
        .I2(bcount[1]),
        .I3(bcount[0]),
        .O(pbuf));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[0] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[0]),
        .Q(\pbuf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[10] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[10]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[11] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[11]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[12] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[12]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[14] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[14]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[16] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[16]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[17] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[17]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[18] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[18]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[19] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[19]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[1] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[1]),
        .Q(\pbuf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[20] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[20]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[22] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[22]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[24] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[24]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[25] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[25]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[26] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[26]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[27] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[27]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[28] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[28]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[2] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[2]),
        .Q(\pbuf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[30] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[30]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[3] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[3]),
        .Q(\pbuf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[4] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[4]),
        .Q(\pbuf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[6] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[6]),
        .Q(\pbuf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[8] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[8]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbuf_reg[9] 
       (.C(clk),
        .CE(pbuf),
        .D(tbuf[9]),
        .Q(p_2_in[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    running_i_1
       (.I0(\sel_reg_n_0_[1] ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[0] ),
        .I3(running),
        .I4(start),
        .O(running_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(clk),
        .CE(sel),
        .D(running_i_1_n_0),
        .Q(running),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h57FF5500)) 
    \sel[0]_i_1 
       (.I0(\sel_reg_n_0_[0] ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[1] ),
        .I3(running),
        .I4(bcount[0]),
        .O(\sel[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA500A7FF)) 
    \sel[1]_i_1 
       (.I0(\sel_reg_n_0_[0] ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[1] ),
        .I3(running),
        .I4(bcount[1]),
        .O(\sel[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \sel[2]_i_1 
       (.I0(tready),
        .I1(bcount[1]),
        .I2(bcount[0]),
        .I3(running),
        .O(sel));
  LUT6 #(
    .INIT(64'hC900CBFFCBFFC900)) 
    \sel[2]_i_2 
       (.I0(\sel_reg_n_0_[0] ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[1] ),
        .I3(running),
        .I4(bcount[1]),
        .I5(bcount[0]),
        .O(\sel[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\sel[0]_i_1_n_0 ),
        .Q(\sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\sel[1]_i_1_n_0 ),
        .Q(\sel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\sel[2]_i_2_n_0 ),
        .Q(\sel_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    \tbus[0]_INST_0 
       (.I0(\tbus[0]_INST_0_i_1_n_0 ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\pbuf_reg_n_0_[0] ),
        .I3(\sel_reg_n_0_[1] ),
        .I4(\sel_reg_n_0_[0] ),
        .O(tbus[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tbus[0]_INST_0_i_1 
       (.I0(p_0_in[0]),
        .I1(p_1_in[0]),
        .I2(\sel_reg_n_0_[1] ),
        .I3(p_2_in[0]),
        .I4(\sel_reg_n_0_[0] ),
        .O(\tbus[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888B8)) 
    \tbus[1]_INST_0 
       (.I0(\tbus[1]_INST_0_i_1_n_0 ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[1] ),
        .I3(\sel_reg_n_0_[0] ),
        .I4(\pbuf_reg_n_0_[1] ),
        .O(tbus[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tbus[1]_INST_0_i_1 
       (.I0(p_0_in[1]),
        .I1(p_1_in[1]),
        .I2(\sel_reg_n_0_[1] ),
        .I3(p_2_in[1]),
        .I4(\sel_reg_n_0_[0] ),
        .O(\tbus[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BB8888)) 
    \tbus[2]_INST_0 
       (.I0(\tbus[2]_INST_0_i_1_n_0 ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\pbuf_reg_n_0_[2] ),
        .I3(\sel_reg_n_0_[1] ),
        .I4(\sel_reg_n_0_[0] ),
        .O(tbus[2]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tbus[2]_INST_0_i_1 
       (.I0(p_0_in[2]),
        .I1(p_1_in[2]),
        .I2(\sel_reg_n_0_[1] ),
        .I3(p_2_in[2]),
        .I4(\sel_reg_n_0_[0] ),
        .O(\tbus[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBBB88)) 
    \tbus[3]_INST_0 
       (.I0(\tbus[3]_INST_0_i_1_n_0 ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\pbuf_reg_n_0_[3] ),
        .I3(\sel_reg_n_0_[1] ),
        .I4(\sel_reg_n_0_[0] ),
        .O(tbus[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tbus[3]_INST_0_i_1 
       (.I0(p_0_in[3]),
        .I1(p_1_in[3]),
        .I2(\sel_reg_n_0_[1] ),
        .I3(p_2_in[3]),
        .I4(\sel_reg_n_0_[0] ),
        .O(\tbus[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAF00A000A0C0A0C0)) 
    \tbus[4]_INST_0 
       (.I0(\tbus[5]_INST_0_i_1_n_0 ),
        .I1(p_2_in[4]),
        .I2(\sel_reg_n_0_[2] ),
        .I3(\sel_reg_n_0_[1] ),
        .I4(\pbuf_reg_n_0_[4] ),
        .I5(\sel_reg_n_0_[0] ),
        .O(tbus[4]));
  LUT6 #(
    .INIT(64'hAFF0A0F0A0C0A0C0)) 
    \tbus[5]_INST_0 
       (.I0(\tbus[5]_INST_0_i_1_n_0 ),
        .I1(p_2_in[4]),
        .I2(\sel_reg_n_0_[2] ),
        .I3(\sel_reg_n_0_[1] ),
        .I4(\pbuf_reg_n_0_[4] ),
        .I5(\sel_reg_n_0_[0] ),
        .O(tbus[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tbus[5]_INST_0_i_1 
       (.I0(p_0_in[4]),
        .I1(\sel_reg_n_0_[0] ),
        .I2(p_1_in[4]),
        .O(\tbus[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \tbus[6]_INST_0 
       (.I0(\tbus[6]_INST_0_i_1_n_0 ),
        .I1(\sel_reg_n_0_[2] ),
        .I2(\sel_reg_n_0_[1] ),
        .I3(\pbuf_reg_n_0_[6] ),
        .I4(\sel_reg_n_0_[0] ),
        .O(tbus[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \tbus[6]_INST_0_i_1 
       (.I0(p_0_in[6]),
        .I1(p_1_in[6]),
        .I2(\sel_reg_n_0_[1] ),
        .I3(p_2_in[6]),
        .I4(\sel_reg_n_0_[0] ),
        .O(\tbus[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2FFE200000000)) 
    tstart_i_1
       (.I0(tstart),
        .I1(tstart_i_2_n_0),
        .I2(start),
        .I3(running),
        .I4(tstart_i_3_n_0),
        .I5(tready),
        .O(tstart_i_1_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    tstart_i_2
       (.I0(bcount[0]),
        .I1(bcount[1]),
        .I2(running),
        .O(tstart_i_2_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    tstart_i_3
       (.I0(\sel_reg_n_0_[2] ),
        .I1(\sel_reg_n_0_[1] ),
        .I2(\sel_reg_n_0_[0] ),
        .O(tstart_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tstart_reg
       (.C(clk),
        .CE(1'b1),
        .D(tstart_i_1_n_0),
        .Q(tstart),
        .R(1'b0));
endmodule

(* CD_MAX = "10416" *) (* CD_WIDTH = "16" *) 
module uart_tx
   (clk,
    tbus,
    start,
    tx,
    ready);
  input clk;
  input [7:0]tbus;
  input start;
  output tx;
  output ready;

  wire [15:0]cd_count;
  wire \cd_count[0]_i_1_n_0 ;
  wire \cd_count[10]_i_1_n_0 ;
  wire \cd_count[11]_i_1_n_0 ;
  wire \cd_count[12]_i_1_n_0 ;
  wire \cd_count[13]_i_1_n_0 ;
  wire \cd_count[14]_i_1_n_0 ;
  wire \cd_count[15]_i_2_n_0 ;
  wire \cd_count[1]_i_1_n_0 ;
  wire \cd_count[2]_i_1_n_0 ;
  wire \cd_count[3]_i_1_n_0 ;
  wire \cd_count[4]_i_1_n_0 ;
  wire \cd_count[5]_i_1_n_0 ;
  wire \cd_count[6]_i_1_n_0 ;
  wire \cd_count[7]_i_1_n_0 ;
  wire \cd_count[8]_i_1_n_0 ;
  wire \cd_count[9]_i_1_n_0 ;
  wire \cd_count_reg[12]_i_2_n_0 ;
  wire \cd_count_reg[12]_i_2_n_4 ;
  wire \cd_count_reg[12]_i_2_n_5 ;
  wire \cd_count_reg[12]_i_2_n_6 ;
  wire \cd_count_reg[12]_i_2_n_7 ;
  wire \cd_count_reg[15]_i_3_n_5 ;
  wire \cd_count_reg[15]_i_3_n_6 ;
  wire \cd_count_reg[15]_i_3_n_7 ;
  wire \cd_count_reg[4]_i_2_n_0 ;
  wire \cd_count_reg[4]_i_2_n_4 ;
  wire \cd_count_reg[4]_i_2_n_5 ;
  wire \cd_count_reg[4]_i_2_n_6 ;
  wire \cd_count_reg[4]_i_2_n_7 ;
  wire \cd_count_reg[8]_i_2_n_0 ;
  wire \cd_count_reg[8]_i_2_n_4 ;
  wire \cd_count_reg[8]_i_2_n_5 ;
  wire \cd_count_reg[8]_i_2_n_6 ;
  wire \cd_count_reg[8]_i_2_n_7 ;
  wire clk;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire p_0_in;
  wire ready;
  wire ready_INST_0_i_1_n_0;
  wire ready_INST_0_i_3_n_0;
  wire ready_INST_0_i_4_n_0;
  wire ready_INST_0_i_5_n_0;
  wire ready_INST_0_i_6_n_0;
  wire running_i_1_n_0;
  wire running_reg_n_0;
  wire [8:0]shift;
  wire \shift[0]_i_1_n_0 ;
  wire \shift[1]_i_1_n_0 ;
  wire \shift[2]_i_1_n_0 ;
  wire \shift[3]_i_1_n_0 ;
  wire \shift[4]_i_1_n_0 ;
  wire \shift[5]_i_1_n_0 ;
  wire \shift[6]_i_1_n_0 ;
  wire \shift[7]_i_1_n_0 ;
  wire \shift[8]_i_1_n_0 ;
  wire start;
  wire [7:0]tbus;
  wire tx;
  wire [2:0]\NLW_cd_count_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cd_count_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cd_count_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_cd_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cd_count_reg[8]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h1)) 
    \cd_count[0]_i_1 
       (.I0(cd_count[0]),
        .I1(count),
        .O(\cd_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[10]_i_1 
       (.I0(\cd_count_reg[12]_i_2_n_6 ),
        .I1(count),
        .O(\cd_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[11]_i_1 
       (.I0(\cd_count_reg[12]_i_2_n_5 ),
        .I1(count),
        .O(\cd_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[12]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[12]_i_2_n_4 ),
        .O(\cd_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[13]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[15]_i_3_n_7 ),
        .O(\cd_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[14]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[15]_i_3_n_6 ),
        .O(\cd_count[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cd_count[15]_i_1 
       (.I0(running_reg_n_0),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[15]_i_2 
       (.I0(count),
        .I1(\cd_count_reg[15]_i_3_n_5 ),
        .O(\cd_count[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \cd_count[1]_i_1 
       (.I0(ready_INST_0_i_3_n_0),
        .I1(ready_INST_0_i_4_n_0),
        .I2(ready_INST_0_i_5_n_0),
        .I3(ready_INST_0_i_6_n_0),
        .I4(\cd_count_reg[4]_i_2_n_7 ),
        .O(\cd_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[2]_i_1 
       (.I0(\cd_count_reg[4]_i_2_n_6 ),
        .I1(count),
        .O(\cd_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[3]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[4]_i_2_n_5 ),
        .O(\cd_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[4]_i_1 
       (.I0(\cd_count_reg[4]_i_2_n_4 ),
        .I1(count),
        .O(\cd_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[5]_i_1 
       (.I0(\cd_count_reg[8]_i_2_n_7 ),
        .I1(count),
        .O(\cd_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[6]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[8]_i_2_n_6 ),
        .O(\cd_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[7]_i_1 
       (.I0(\cd_count_reg[8]_i_2_n_5 ),
        .I1(count),
        .O(\cd_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cd_count[8]_i_1 
       (.I0(\cd_count_reg[8]_i_2_n_4 ),
        .I1(count),
        .O(\cd_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \cd_count[9]_i_1 
       (.I0(count),
        .I1(\cd_count_reg[12]_i_2_n_7 ),
        .O(\cd_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[0]_i_1_n_0 ),
        .Q(cd_count[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[10]_i_1_n_0 ),
        .Q(cd_count[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[11]_i_1_n_0 ),
        .Q(cd_count[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[12]_i_1_n_0 ),
        .Q(cd_count[12]),
        .R(p_0_in));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cd_count_reg[12]_i_2 
       (.CI(\cd_count_reg[8]_i_2_n_0 ),
        .CO({\cd_count_reg[12]_i_2_n_0 ,\NLW_cd_count_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cd_count_reg[12]_i_2_n_4 ,\cd_count_reg[12]_i_2_n_5 ,\cd_count_reg[12]_i_2_n_6 ,\cd_count_reg[12]_i_2_n_7 }),
        .S(cd_count[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[13]_i_1_n_0 ),
        .Q(cd_count[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[14]_i_1_n_0 ),
        .Q(cd_count[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[15]_i_2_n_0 ),
        .Q(cd_count[15]),
        .R(p_0_in));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cd_count_reg[15]_i_3 
       (.CI(\cd_count_reg[12]_i_2_n_0 ),
        .CO(\NLW_cd_count_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cd_count_reg[15]_i_3_O_UNCONNECTED [3],\cd_count_reg[15]_i_3_n_5 ,\cd_count_reg[15]_i_3_n_6 ,\cd_count_reg[15]_i_3_n_7 }),
        .S({1'b0,cd_count[15:13]}));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[1]_i_1_n_0 ),
        .Q(cd_count[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[2]_i_1_n_0 ),
        .Q(cd_count[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[3]_i_1_n_0 ),
        .Q(cd_count[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[4]_i_1_n_0 ),
        .Q(cd_count[4]),
        .R(p_0_in));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cd_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cd_count_reg[4]_i_2_n_0 ,\NLW_cd_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(cd_count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cd_count_reg[4]_i_2_n_4 ,\cd_count_reg[4]_i_2_n_5 ,\cd_count_reg[4]_i_2_n_6 ,\cd_count_reg[4]_i_2_n_7 }),
        .S(cd_count[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[5]_i_1_n_0 ),
        .Q(cd_count[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[6]_i_1_n_0 ),
        .Q(cd_count[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[7]_i_1_n_0 ),
        .Q(cd_count[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[8]_i_1_n_0 ),
        .Q(cd_count[8]),
        .R(p_0_in));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cd_count_reg[8]_i_2 
       (.CI(\cd_count_reg[4]_i_2_n_0 ),
        .CO({\cd_count_reg[8]_i_2_n_0 ,\NLW_cd_count_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cd_count_reg[8]_i_2_n_4 ,\cd_count_reg[8]_i_2_n_5 ,\cd_count_reg[8]_i_2_n_6 ,\cd_count_reg[8]_i_2_n_7 }),
        .S(cd_count[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \cd_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cd_count[9]_i_1_n_0 ),
        .Q(cd_count[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h558A)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h68AA)) 
    \count[3]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .O(\count[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(count),
        .D(\count[3]_i_1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h444F)) 
    ready_INST_0
       (.I0(ready_INST_0_i_1_n_0),
        .I1(count),
        .I2(running_reg_n_0),
        .I3(start),
        .O(ready));
  LUT4 #(
    .INIT(16'hFDFF)) 
    ready_INST_0_i_1
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .O(ready_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    ready_INST_0_i_2
       (.I0(ready_INST_0_i_3_n_0),
        .I1(ready_INST_0_i_4_n_0),
        .I2(ready_INST_0_i_5_n_0),
        .I3(ready_INST_0_i_6_n_0),
        .O(count));
  LUT4 #(
    .INIT(16'hFFDF)) 
    ready_INST_0_i_3
       (.I0(cd_count[11]),
        .I1(cd_count[14]),
        .I2(cd_count[7]),
        .I3(cd_count[8]),
        .O(ready_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    ready_INST_0_i_4
       (.I0(cd_count[2]),
        .I1(cd_count[12]),
        .I2(cd_count[5]),
        .I3(cd_count[0]),
        .O(ready_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    ready_INST_0_i_5
       (.I0(cd_count[9]),
        .I1(cd_count[1]),
        .I2(cd_count[13]),
        .I3(cd_count[3]),
        .O(ready_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    ready_INST_0_i_6
       (.I0(cd_count[4]),
        .I1(cd_count[10]),
        .I2(cd_count[15]),
        .I3(cd_count[6]),
        .O(ready_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBFB0)) 
    running_i_1
       (.I0(ready_INST_0_i_1_n_0),
        .I1(count),
        .I2(running_reg_n_0),
        .I3(start),
        .O(running_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    running_reg
       (.C(clk),
        .CE(1'b1),
        .D(running_i_1_n_0),
        .Q(running_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift[0]_i_1 
       (.I0(running_reg_n_0),
        .I1(shift[1]),
        .O(\shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[1]_i_1 
       (.I0(shift[2]),
        .I1(running_reg_n_0),
        .I2(tbus[0]),
        .O(\shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \shift[2]_i_1 
       (.I0(running_reg_n_0),
        .I1(shift[3]),
        .I2(tbus[1]),
        .O(\shift[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[3]_i_1 
       (.I0(shift[4]),
        .I1(running_reg_n_0),
        .I2(tbus[2]),
        .O(\shift[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[4]_i_1 
       (.I0(shift[5]),
        .I1(running_reg_n_0),
        .I2(tbus[3]),
        .O(\shift[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift[5]_i_1 
       (.I0(shift[6]),
        .I1(running_reg_n_0),
        .I2(tbus[4]),
        .O(\shift[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \shift[6]_i_1 
       (.I0(running_reg_n_0),
        .I1(shift[7]),
        .I2(tbus[5]),
        .O(\shift[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \shift[7]_i_1 
       (.I0(running_reg_n_0),
        .I1(shift[8]),
        .I2(tbus[6]),
        .O(\shift[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \shift[8]_i_1 
       (.I0(ready_INST_0_i_3_n_0),
        .I1(ready_INST_0_i_4_n_0),
        .I2(ready_INST_0_i_5_n_0),
        .I3(ready_INST_0_i_6_n_0),
        .I4(running_reg_n_0),
        .O(\shift[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[0] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[0]_i_1_n_0 ),
        .Q(shift[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[1] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[1]_i_1_n_0 ),
        .Q(shift[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[2] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[2]_i_1_n_0 ),
        .Q(shift[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[3] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[3]_i_1_n_0 ),
        .Q(shift[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[4] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[4]_i_1_n_0 ),
        .Q(shift[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[5] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[5]_i_1_n_0 ),
        .Q(shift[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[6] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[6]_i_1_n_0 ),
        .Q(shift[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[7] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(\shift[7]_i_1_n_0 ),
        .Q(shift[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_reg[8] 
       (.C(clk),
        .CE(\shift[8]_i_1_n_0 ),
        .D(running_reg_n_0),
        .Q(shift[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    tx_INST_0
       (.I0(shift[0]),
        .I1(running_reg_n_0),
        .O(tx));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
