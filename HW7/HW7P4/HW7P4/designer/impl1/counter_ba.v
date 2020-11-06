`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module counter(
       clk,
       reset,
       en,
       TC,
       q
    );
input  clk;
input  reset;
input  en;
output TC;
output [23:0] q;

    wire tempe, temp_c11, temp_c7_net_1, clk_c, N_54, en_c, TC_c, 
        \q_c[0] , \q_c[1] , \q_c[2] , \q_c[3] , \q_c[4] , \q_c[5] , 
        \q_c[6] , \q_c[7] , \q_c[8] , \q_c[9] , \q_c[10] , \q_c[11] , 
        \q_c[12] , \q_c[13] , \q_c[14] , \q_c[15] , \q_c[16] , 
        \q_c[17] , \q_c[18] , \q_c[19] , \q_c[20] , \q_c[21] , 
        \q_c[22] , \q_c[23] , temp_c8_net_1, temp_n8_net_1, 
        temp_n9_net_1, temp_n10, temp_n11, temp_n23_net_1, 
        temp_n22_net_1, temp_n21_net_1, temp_n4_net_1, temp_n2_net_1, 
        temp_c2_net_1, temp_c1_net_1, N_103, temp_c21_net_1, 
        temp_c19_net_1, temp_c18, temp_c15_net_1, temp_c14_net_1, 
        temp_c13_net_1, temp_c12_net_1, temp_c3_net_1, temp7_net_1, 
        temp_c4_net_1, temp_c5_net_1, temp_c6_net_1, temp_n5_net_1, 
        temp_n6_net_1, temp_n7_net_1, temp_n12_net_1, temp_n13_net_1, 
        temp_n14_net_1, temp_n15_net_1, temp_n16_net_1, temp_n17, 
        temp_n18, temp_n19_net_1, temp_n20_net_1, N_130, temp_n1_net_1, 
        temp_n3_net_1, TC6, temp_c11_m6_0_a2_2_net_1, 
        temp_c11_m6_0_a2_3_net_1, temp_c11_m6_0_a2_4_net_1, 
        temp_n18_N_11_mux, temp_n11_N_11_mux, temp_n17_N_9_mux, 
        temp_n10_N_11_mux, TC6_0, TC6_1, TC6_3, TC6_4, TC6_5, TC6_7, 
        TC6_8, TC6_9, TC6_10, TC6_13, TC6_15, TC6_17, TC6_18, TC6_19, 
        TC6_20, temp_n10_m4_0_a2_3_net_1, temp_n10_m4_0_a2_4_net_1, 
        temp_c11_m6_0_a2_4_2_net_1, temp_n11_m4_0_a2_2_net_1, 
        temp_n11_m4_0_a2_3_net_1, temp_n11_m4_0_a2_4_net_1, 
        temp_n18_m4_0_a2_0_net_1, temp_n18_m4_0_a2_4_net_1, 
        temp_n17_m3_0_a2_0_net_1, temp_n17_m3_0_a2_1_net_1, 
        temp_n17_m3_0_a2_3_net_1, temp_c18_m6_0_a2_1_net_1, 
        temp_c18_m6_0_a2_3_net_1, temp_c18_m6_0_a2_5_net_1, 
        temp_c18_m6_0_a2_6_net_1, temp_47_0_net_1, temp_c15_out, 
        temp_c12_out, temp_c21_out_0, temp_c18_m6_0_a2_out, 
        temp_c7_out, temp_c4_out, temp_c20_net_1, \q_pad[17]/U0/NET1 , 
        \q_pad[17]/U0/NET2 , \q_pad[1]/U0/NET1 , \q_pad[1]/U0/NET2 , 
        \q_pad[23]/U0/NET1 , \q_pad[23]/U0/NET2 , \q_pad[3]/U0/NET1 , 
        \q_pad[3]/U0/NET2 , \q_pad[22]/U0/NET1 , \q_pad[22]/U0/NET2 , 
        \q_pad[20]/U0/NET1 , \q_pad[20]/U0/NET2 , \q_pad[0]/U0/NET1 , 
        \q_pad[0]/U0/NET2 , \q_pad[9]/U0/NET1 , \q_pad[9]/U0/NET2 , 
        \q_pad[7]/U0/NET1 , \q_pad[7]/U0/NET2 , \q_pad[6]/U0/NET1 , 
        \q_pad[6]/U0/NET2 , \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , 
        \reset_pad/U0/NET1 , \q_pad[4]/U0/NET1 , \q_pad[4]/U0/NET2 , 
        \q_pad[14]/U0/NET1 , \q_pad[14]/U0/NET2 , \q_pad[11]/U0/NET1 , 
        \q_pad[11]/U0/NET2 , \q_pad[2]/U0/NET1 , \q_pad[2]/U0/NET2 , 
        \q_pad[13]/U0/NET1 , \q_pad[13]/U0/NET2 , \q_pad[15]/U0/NET1 , 
        \q_pad[15]/U0/NET2 , \q_pad[12]/U0/NET1 , \q_pad[12]/U0/NET2 , 
        \q_pad[10]/U0/NET1 , \q_pad[10]/U0/NET2 , \clk_pad/U0/NET1 , 
        \q_pad[19]/U0/NET1 , \q_pad[19]/U0/NET2 , \q_pad[8]/U0/NET1 , 
        \q_pad[8]/U0/NET2 , \q_pad[16]/U0/NET1 , \q_pad[16]/U0/NET2 , 
        \en_pad/U0/NET1 , \q_pad[18]/U0/NET1 , \q_pad[18]/U0/NET2 , 
        \q_pad[5]/U0/NET1 , \q_pad[5]/U0/NET2 , \q_pad[21]/U0/NET1 , 
        \q_pad[21]/U0/NET2 , VCC, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2B temp_c18_m6_0_a2 (.A(temp_c18_m6_0_a2_out), .B(temp_c2_net_1)
        , .Y(temp_c18));
    IOTRI_OB_EB \q_pad[10]/U0/U1  (.D(\q_c[10] ), .E(VCC), .DOUT(
        \q_pad[10]/U0/NET1 ), .EOUT(\q_pad[10]/U0/NET2 ));
    NOR3C temp_n11_m4_0_a2 (.A(temp_n11_m4_0_a2_4_net_1), .B(
        temp_n11_m4_0_a2_3_net_1), .C(temp_c3_net_1), .Y(
        temp_n11_N_11_mux));
    XA1 temp_n13 (.A(temp_c12_net_1), .B(\q_c[13] ), .C(temp7_net_1), 
        .Y(temp_n13_net_1));
    DFN1E1 \temp[23]  (.D(temp_n23_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[23] ));
    XA1 temp_n19 (.A(temp_c18), .B(\q_c[19] ), .C(temp7_net_1), .Y(
        temp_n19_net_1));
    NOR2A temp_n0 (.A(temp7_net_1), .B(\q_c[0] ), .Y(N_130));
    NOR3C temp_n10_m4_0_a2_4 (.A(\q_c[7] ), .B(\q_c[4] ), .C(TC6_8), 
        .Y(temp_n10_m4_0_a2_4_net_1));
    NOR2A temp7 (.A(en_c), .B(N_54), .Y(temp7_net_1));
    NOR3C temp_c3 (.A(\q_c[3] ), .B(\q_c[2] ), .C(temp_c1_net_1), .Y(
        temp_c3_net_1));
    NOR3C temp_n17_m3_0_a2 (.A(temp_c11_m6_0_a2_3_net_1), .B(
        temp_n17_m3_0_a2_3_net_1), .C(temp_c11_m6_0_a2_4_net_1), .Y(
        temp_n17_N_9_mux));
    NOR2B temp_n18_m4_0_a2_0 (.A(\q_c[17] ), .B(\q_c[16] ), .Y(
        temp_n18_m4_0_a2_0_net_1));
    XA1B temp_n10_m6 (.A(temp_n10_N_11_mux), .B(\q_c[10] ), .C(N_54), 
        .Y(temp_n10));
    NOR2B TC_RNO_9 (.A(\q_c[8] ), .B(\q_c[7] ), .Y(TC6_9));
    IOTRI_OB_EB \q_pad[4]/U0/U1  (.D(\q_c[4] ), .E(VCC), .DOUT(
        \q_pad[4]/U0/NET1 ), .EOUT(\q_pad[4]/U0/NET2 ));
    DFN1E1 \temp[8]  (.D(temp_n8_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[8] ));
    NOR3C temp_c11_m6_0_a2 (.A(temp_c11_m6_0_a2_3_net_1), .B(
        temp_c11_m6_0_a2_4_2_net_1), .C(temp_c2_net_1), .Y(temp_c11));
    IOPAD_IN \en_pad/U0/U0  (.PAD(en), .Y(\en_pad/U0/NET1 ));
    IOPAD_TRI \q_pad[23]/U0/U0  (.D(\q_pad[23]/U0/NET1 ), .E(
        \q_pad[23]/U0/NET2 ), .PAD(q[23]));
    DFN1E1 \temp[18]  (.D(temp_n18), .CLK(clk_c), .E(tempe), .Q(
        \q_c[18] ));
    NOR3C temp_c18_m6_0_a2_3 (.A(\q_c[17] ), .B(\q_c[18] ), .C(
        \q_c[15] ), .Y(temp_c18_m6_0_a2_3_net_1));
    IOTRI_OB_EB \q_pad[5]/U0/U1  (.D(\q_c[5] ), .E(VCC), .DOUT(
        \q_pad[5]/U0/NET1 ), .EOUT(\q_pad[5]/U0/NET2 ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    IOTRI_OB_EB \q_pad[16]/U0/U1  (.D(\q_c[16] ), .E(VCC), .DOUT(
        \q_pad[16]/U0/NET1 ), .EOUT(\q_pad[16]/U0/NET2 ));
    NOR2A temp_47_0 (.A(\q_c[22] ), .B(N_54), .Y(temp_47_0_net_1));
    NOR2B temp_c11_m6_0_a2_4 (.A(temp_c11_m6_0_a2_4_2_net_1), .B(
        temp_c2_net_1), .Y(temp_c11_m6_0_a2_4_net_1));
    NOR2B TC_RNO_4 (.A(\q_c[1] ), .B(\q_c[11] ), .Y(TC6_4));
    NOR2B temp_c7 (.A(temp_c5_net_1), .B(temp_c7_out), .Y(
        temp_c7_net_1));
    DFN1E1 \temp[19]  (.D(temp_n19_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[19] ));
    IOTRI_OB_EB \q_pad[18]/U0/U1  (.D(\q_c[18] ), .E(VCC), .DOUT(
        \q_pad[18]/U0/NET1 ), .EOUT(\q_pad[18]/U0/NET2 ));
    NOR2B temp_n17_m3_0_a2_1 (.A(\q_c[13] ), .B(\q_c[12] ), .Y(
        temp_n17_m3_0_a2_1_net_1));
    NOR2B TC_RNO_3 (.A(\q_c[17] ), .B(\q_c[10] ), .Y(TC6_5));
    IOTRI_OB_EB \q_pad[22]/U0/U1  (.D(\q_c[22] ), .E(VCC), .DOUT(
        \q_pad[22]/U0/NET1 ), .EOUT(\q_pad[22]/U0/NET2 ));
    DFN1E1 \temp[11]  (.D(temp_n11), .CLK(clk_c), .E(tempe), .Q(
        \q_c[11] ));
    NOR2B temp_c6 (.A(temp_c5_net_1), .B(\q_c[6] ), .Y(temp_c6_net_1));
    IOTRI_OB_EB \q_pad[19]/U0/U1  (.D(\q_c[19] ), .E(VCC), .DOUT(
        \q_pad[19]/U0/NET1 ), .EOUT(\q_pad[19]/U0/NET2 ));
    IOPAD_TRI \q_pad[17]/U0/U0  (.D(\q_pad[17]/U0/NET1 ), .E(
        \q_pad[17]/U0/NET2 ), .PAD(q[17]));
    NOR3C temp_c4_s (.A(\q_c[3] ), .B(\q_c[2] ), .C(\q_c[4] ), .Y(
        temp_c4_out));
    NOR2B temp_c8 (.A(temp_c7_net_1), .B(\q_c[8] ), .Y(temp_c8_net_1));
    NOR3C temp_c12_s (.A(\q_c[12] ), .B(\q_c[2] ), .C(temp_c1_net_1), 
        .Y(temp_c12_out));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    NOR2B temp_c5 (.A(temp_c4_net_1), .B(\q_c[5] ), .Y(temp_c5_net_1));
    IOPAD_TRI \q_pad[12]/U0/U0  (.D(\q_pad[12]/U0/NET1 ), .E(
        \q_pad[12]/U0/NET2 ), .PAD(q[12]));
    XA1 temp_n14 (.A(temp_c13_net_1), .B(\q_c[14] ), .C(temp7_net_1), 
        .Y(temp_n14_net_1));
    IOTRI_OB_EB \q_pad[9]/U0/U1  (.D(\q_c[9] ), .E(VCC), .DOUT(
        \q_pad[9]/U0/NET1 ), .EOUT(\q_pad[9]/U0/NET2 ));
    NOR3C temp_n10_m4_0_a2_3 (.A(\q_c[9] ), .B(\q_c[3] ), .C(\q_c[8] ), 
        .Y(temp_n10_m4_0_a2_3_net_1));
    IOTRI_OB_EB \q_pad[3]/U0/U1  (.D(\q_c[3] ), .E(VCC), .DOUT(
        \q_pad[3]/U0/NET1 ), .EOUT(\q_pad[3]/U0/NET2 ));
    NOR2B temp_c4 (.A(temp_c1_net_1), .B(temp_c4_out), .Y(
        temp_c4_net_1));
    DFN1E1 \temp[4]  (.D(temp_n4_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[4] ));
    IOPAD_TRI \q_pad[0]/U0/U0  (.D(\q_pad[0]/U0/NET1 ), .E(
        \q_pad[0]/U0/NET2 ), .PAD(q[0]));
    NOR3C temp_n18_m4_0_a2_4 (.A(temp_c15_out), .B(
        temp_n18_m4_0_a2_0_net_1), .C(temp_n17_m3_0_a2_1_net_1), .Y(
        temp_n18_m4_0_a2_4_net_1));
    DFN1E1 \temp[15]  (.D(temp_n15_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[15] ));
    IOTRI_OB_EB \q_pad[6]/U0/U1  (.D(\q_c[6] ), .E(VCC), .DOUT(
        \q_pad[6]/U0/NET1 ), .EOUT(\q_pad[6]/U0/NET2 ));
    IOIN_IB \en_pad/U0/U1  (.YIN(\en_pad/U0/NET1 ), .Y(en_c));
    DFN1E1 \temp[21]  (.D(temp_n21_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[21] ));
    NOR2B TC_RNO_11 (.A(\q_c[16] ), .B(\q_c[4] ), .Y(TC6_7));
    XA1 temp_n3 (.A(\q_c[3] ), .B(temp_c2_net_1), .C(temp7_net_1), .Y(
        temp_n3_net_1));
    IOTRI_OB_EB \q_pad[20]/U0/U1  (.D(\q_c[20] ), .E(VCC), .DOUT(
        \q_pad[20]/U0/NET1 ), .EOUT(\q_pad[20]/U0/NET2 ));
    XA1B temp_n22 (.A(temp_c21_net_1), .B(\q_c[22] ), .C(N_54), .Y(
        temp_n22_net_1));
    DFN1E1 \temp[10]  (.D(temp_n10), .CLK(clk_c), .E(tempe), .Q(
        \q_c[10] ));
    NOR2B TC_RNO_12 (.A(\q_c[19] ), .B(\q_c[2] ), .Y(TC6_3));
    IOTRI_OB_EB \q_pad[11]/U0/U1  (.D(\q_c[11] ), .E(VCC), .DOUT(
        \q_pad[11]/U0/NET1 ), .EOUT(\q_pad[11]/U0/NET2 ));
    IOTRI_OB_EB \q_pad[1]/U0/U1  (.D(\q_c[1] ), .E(VCC), .DOUT(
        \q_pad[1]/U0/NET1 ), .EOUT(\q_pad[1]/U0/NET2 ));
    NOR2B temp_c1 (.A(\q_c[0] ), .B(\q_c[1] ), .Y(temp_c1_net_1));
    IOPAD_TRI \q_pad[4]/U0/U0  (.D(\q_pad[4]/U0/NET1 ), .E(
        \q_pad[4]/U0/NET2 ), .PAD(q[4]));
    IOPAD_TRI \q_pad[10]/U0/U0  (.D(\q_pad[10]/U0/NET1 ), .E(
        \q_pad[10]/U0/NET2 ), .PAD(q[10]));
    XA1 temp_n7 (.A(temp_c6_net_1), .B(\q_c[7] ), .C(temp7_net_1), .Y(
        temp_n7_net_1));
    DFN1E1 \temp[7]  (.D(temp_n7_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[7] ));
    XA1 temp_n6 (.A(temp_c5_net_1), .B(\q_c[6] ), .C(temp7_net_1), .Y(
        temp_n6_net_1));
    NOR3C temp_n10_m4_0_a2 (.A(temp_n10_m4_0_a2_4_net_1), .B(
        temp_n10_m4_0_a2_3_net_1), .C(temp_c2_net_1), .Y(
        temp_n10_N_11_mux));
    IOPAD_TRI \q_pad[5]/U0/U0  (.D(\q_pad[5]/U0/NET1 ), .E(
        \q_pad[5]/U0/NET2 ), .PAD(q[5]));
    AX1C temp_n23 (.A(temp_c21_net_1), .B(temp_47_0_net_1), .C(N_103), 
        .Y(temp_n23_net_1));
    DFN1E1 \temp[12]  (.D(temp_n12_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[12] ));
    NOR3C temp_n11_m4_0_a2_3 (.A(\q_c[9] ), .B(\q_c[10] ), .C(\q_c[8] )
        , .Y(temp_n11_m4_0_a2_3_net_1));
    DFN1E1 \temp[20]  (.D(temp_n20_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[20] ));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    XA1B temp_n8 (.A(temp_c7_net_1), .B(\q_c[8] ), .C(N_54), .Y(
        temp_n8_net_1));
    XA1 temp_n18_m6 (.A(temp_n18_N_11_mux), .B(\q_c[18] ), .C(
        temp7_net_1), .Y(temp_n18));
    NOR2B \temp_RNI7BPV[5]  (.A(\q_c[5] ), .B(\q_c[6] ), .Y(TC6_8));
    DFN1E1 TC_inst_1 (.D(TC6), .CLK(clk_c), .E(temp7_net_1), .Q(TC_c));
    NOR3C temp_n17_m3_0_a2_3 (.A(temp_n17_m3_0_a2_0_net_1), .B(
        \q_c[15] ), .C(temp_n17_m3_0_a2_1_net_1), .Y(
        temp_n17_m3_0_a2_3_net_1));
    XA1 temp_n5 (.A(temp_c4_net_1), .B(\q_c[5] ), .C(temp7_net_1), .Y(
        temp_n5_net_1));
    XA1B temp_n4 (.A(temp_c3_net_1), .B(\q_c[4] ), .C(N_54), .Y(
        temp_n4_net_1));
    NOR2B temp_c18_m6_0_a2_1 (.A(\q_c[16] ), .B(\q_c[13] ), .Y(
        temp_c18_m6_0_a2_1_net_1));
    IOPAD_TRI \q_pad[16]/U0/U0  (.D(\q_pad[16]/U0/NET1 ), .E(
        \q_pad[16]/U0/NET2 ), .PAD(q[16]));
    NOR3C temp_c11_m6_0_a2_2 (.A(\q_c[10] ), .B(\q_c[11] ), .C(
        \q_c[7] ), .Y(temp_c11_m6_0_a2_2_net_1));
    IOTRI_OB_EB \q_pad[7]/U0/U1  (.D(\q_c[7] ), .E(VCC), .DOUT(
        \q_pad[7]/U0/NET1 ), .EOUT(\q_pad[7]/U0/NET2 ));
    IOPAD_TRI \q_pad[22]/U0/U0  (.D(\q_pad[22]/U0/NET1 ), .E(
        \q_pad[22]/U0/NET2 ), .PAD(q[22]));
    IOPAD_TRI \q_pad[18]/U0/U0  (.D(\q_pad[18]/U0/NET1 ), .E(
        \q_pad[18]/U0/NET2 ), .PAD(q[18]));
    IOPAD_TRI \q_pad[9]/U0/U0  (.D(\q_pad[9]/U0/NET1 ), .E(
        \q_pad[9]/U0/NET2 ), .PAD(q[9]));
    XA1 temp_n16 (.A(temp_c15_net_1), .B(\q_c[16] ), .C(temp7_net_1), 
        .Y(temp_n16_net_1));
    IOPAD_TRI \q_pad[3]/U0/U0  (.D(\q_pad[3]/U0/NET1 ), .E(
        \q_pad[3]/U0/NET2 ), .PAD(q[3]));
    NOR3C temp_c18_m6_0_a2_5 (.A(\q_c[9] ), .B(\q_c[8] ), .C(
        temp_c18_m6_0_a2_3_net_1), .Y(temp_c18_m6_0_a2_5_net_1));
    DFN1E1 \temp[22]  (.D(temp_n22_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[22] ));
    IOPAD_TRI \q_pad[19]/U0/U0  (.D(\q_pad[19]/U0/NET1 ), .E(
        \q_pad[19]/U0/NET2 ), .PAD(q[19]));
    IOPAD_TRI \q_pad[6]/U0/U0  (.D(\q_pad[6]/U0/NET1 ), .E(
        \q_pad[6]/U0/NET2 ), .PAD(q[6]));
    NOR2B temp_n17_m3_0_a2_0 (.A(\q_c[16] ), .B(\q_c[14] ), .Y(
        temp_n17_m3_0_a2_0_net_1));
    XA1 temp_n1 (.A(\q_c[1] ), .B(\q_c[0] ), .C(temp7_net_1), .Y(
        temp_n1_net_1));
    XA1 temp_n15 (.A(temp_c14_net_1), .B(\q_c[15] ), .C(temp7_net_1), 
        .Y(temp_n15_net_1));
    IOTRI_OB_EB \q_pad[15]/U0/U1  (.D(\q_c[15] ), .E(VCC), .DOUT(
        \q_pad[15]/U0/NET1 ), .EOUT(\q_pad[15]/U0/NET2 ));
    IOTRI_OB_EB \q_pad[13]/U0/U1  (.D(\q_c[13] ), .E(VCC), .DOUT(
        \q_pad[13]/U0/NET1 ), .EOUT(\q_pad[13]/U0/NET2 ));
    NOR3C TC_RNO_10 (.A(\q_c[15] ), .B(\q_c[13] ), .C(TC6_10), .Y(
        TC6_17));
    IOPAD_TRI \q_pad[1]/U0/U0  (.D(\q_pad[1]/U0/NET1 ), .E(
        \q_pad[1]/U0/NET2 ), .PAD(q[1]));
    IOTRI_OB_EB \q_pad[21]/U0/U1  (.D(\q_c[21] ), .E(VCC), .DOUT(
        \q_pad[21]/U0/NET1 ), .EOUT(\q_pad[21]/U0/NET2 ));
    OR2 templde (.A(en_c), .B(N_54), .Y(tempe));
    NOR3C temp_c21_s_0 (.A(\q_c[21] ), .B(\q_c[20] ), .C(\q_c[19] ), 
        .Y(temp_c21_out_0));
    DFN1E1 \temp[6]  (.D(temp_n6_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[6] ));
    NOR3C temp_c11_m6_0_a2_4_2 (.A(\q_c[3] ), .B(\q_c[6] ), .C(
        temp_n11_m4_0_a2_2_net_1), .Y(temp_c11_m6_0_a2_4_2_net_1));
    IOPAD_TRI \q_pad[20]/U0/U0  (.D(\q_pad[20]/U0/NET1 ), .E(
        \q_pad[20]/U0/NET2 ), .PAD(q[20]));
    DFN1E1 \temp[17]  (.D(temp_n17), .CLK(clk_c), .E(tempe), .Q(
        \q_c[17] ));
    NOR2B temp_n11_m4_0_a2_4 (.A(temp_c7_out), .B(
        temp_n11_m4_0_a2_2_net_1), .Y(temp_n11_m4_0_a2_4_net_1));
    NOR3C TC_RNO_2 (.A(TC6_9), .B(TC6_8), .C(TC6_17), .Y(TC6_20));
    IOPAD_TRI \q_pad[11]/U0/U0  (.D(\q_pad[11]/U0/NET1 ), .E(
        \q_pad[11]/U0/NET2 ), .PAD(q[11]));
    NOR2B temp_c2 (.A(temp_c1_net_1), .B(\q_c[2] ), .Y(temp_c2_net_1));
    NOR3C temp_c19 (.A(temp_c2_net_1), .B(\q_c[19] ), .C(
        temp_c18_m6_0_a2_out), .Y(temp_c19_net_1));
    IOTRI_OB_EB \q_pad[14]/U0/U1  (.D(\q_c[14] ), .E(VCC), .DOUT(
        \q_pad[14]/U0/NET1 ), .EOUT(\q_pad[14]/U0/NET2 ));
    NOR3C TC_RNO_1 (.A(TC6_1), .B(TC6_0), .C(TC6_13), .Y(TC6_18));
    NOR3C temp_c18_m6_0_a2_s (.A(temp_c18_m6_0_a2_6_net_1), .B(
        temp_c18_m6_0_a2_5_net_1), .C(temp_c11_m6_0_a2_4_2_net_1), .Y(
        temp_c18_m6_0_a2_out));
    DFN1E1 \temp[0]  (.D(N_130), .CLK(clk_c), .E(tempe), .Q(\q_c[0] ));
    IOPAD_TRI \q_pad[7]/U0/U0  (.D(\q_pad[7]/U0/NET1 ), .E(
        \q_pad[7]/U0/NET2 ), .PAD(q[7]));
    NOR2B temp_c7_s (.A(\q_c[6] ), .B(\q_c[7] ), .Y(temp_c7_out));
    IOTRI_OB_EB \q_pad[8]/U0/U1  (.D(\q_c[8] ), .E(VCC), .DOUT(
        \q_pad[8]/U0/NET1 ), .EOUT(\q_pad[8]/U0/NET2 ));
    NOR3C temp_n18_m4_0_a2 (.A(temp_c11_m6_0_a2_3_net_1), .B(
        temp_n18_m4_0_a2_4_net_1), .C(temp_c11_m6_0_a2_4_net_1), .Y(
        temp_n18_N_11_mux));
    DFN1E1 \temp[16]  (.D(temp_n16_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[16] ));
    NOR2B \temp_RNI4FOO[12]  (.A(\q_c[12] ), .B(\q_c[14] ), .Y(TC6_10));
    IOTRI_OB_EB \q_pad[2]/U0/U1  (.D(\q_c[2] ), .E(VCC), .DOUT(
        \q_pad[2]/U0/NET1 ), .EOUT(\q_pad[2]/U0/NET2 ));
    NOR2B temp_c15_s (.A(\q_c[14] ), .B(\q_c[15] ), .Y(temp_c15_out));
    NOR2B temp_c13 (.A(temp_c12_net_1), .B(\q_c[13] ), .Y(
        temp_c13_net_1));
    IOTRI_OB_EB \q_pad[23]/U0/U1  (.D(\q_c[23] ), .E(VCC), .DOUT(
        \q_pad[23]/U0/NET1 ), .EOUT(\q_pad[23]/U0/NET2 ));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(N_54));
    XA1B temp_n2 (.A(temp_c1_net_1), .B(\q_c[2] ), .C(N_54), .Y(
        temp_n2_net_1));
    DFN1E1 \temp[9]  (.D(temp_n9_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[9] ));
    NOR2B TC_RNO_6 (.A(\q_c[22] ), .B(\q_c[21] ), .Y(TC6_1));
    IOPAD_TRI \q_pad[21]/U0/U0  (.D(\q_pad[21]/U0/NET1 ), .E(
        \q_pad[21]/U0/NET2 ), .PAD(q[21]));
    IOPAD_TRI \q_pad[15]/U0/U0  (.D(\q_pad[15]/U0/NET1 ), .E(
        \q_pad[15]/U0/NET2 ), .PAD(q[15]));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    NOR3C temp_c11_m6_0_a2_3 (.A(\q_c[9] ), .B(\q_c[8] ), .C(
        temp_c11_m6_0_a2_2_net_1), .Y(temp_c11_m6_0_a2_3_net_1));
    DFN1E1 \temp[1]  (.D(temp_n1_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[1] ));
    IOPAD_TRI \q_pad[13]/U0/U0  (.D(\q_pad[13]/U0/NET1 ), .E(
        \q_pad[13]/U0/NET2 ), .PAD(q[13]));
    IOTRI_OB_EB \q_pad[17]/U0/U1  (.D(\q_c[17] ), .E(VCC), .DOUT(
        \q_pad[17]/U0/NET1 ), .EOUT(\q_pad[17]/U0/NET2 ));
    DFN1E1 \temp[14]  (.D(temp_n14_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[14] ));
    DFN1E1 \temp[5]  (.D(temp_n5_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[5] ));
    DFN1E1 \temp[3]  (.D(temp_n3_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[3] ));
    NOR2B temp_c21 (.A(temp_c18), .B(temp_c21_out_0), .Y(
        temp_c21_net_1));
    DFN1E1 \temp[2]  (.D(temp_n2_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[2] ));
    IOTRI_OB_EB \q_pad[12]/U0/U1  (.D(\q_c[12] ), .E(VCC), .DOUT(
        \q_pad[12]/U0/NET1 ), .EOUT(\q_pad[12]/U0/NET2 ));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    NOR2A TC_RNO_7 (.A(\q_c[23] ), .B(\q_c[0] ), .Y(TC6_0));
    NOR3C TC_RNO_5 (.A(\q_c[9] ), .B(\q_c[3] ), .C(TC6_7), .Y(TC6_15));
    NOR2B temp_n11_m4_0_a2_2 (.A(\q_c[5] ), .B(\q_c[4] ), .Y(
        temp_n11_m4_0_a2_2_net_1));
    NOR3C TC_RNO_0 (.A(TC6_5), .B(TC6_4), .C(TC6_15), .Y(TC6_19));
    XA1 temp_n17_m5 (.A(temp_n17_N_9_mux), .B(\q_c[17] ), .C(
        temp7_net_1), .Y(temp_n17));
    NOR3C TC_RNO_8 (.A(\q_c[20] ), .B(\q_c[18] ), .C(TC6_3), .Y(TC6_13)
        );
    XA1 temp_n20 (.A(temp_c19_net_1), .B(\q_c[20] ), .C(temp7_net_1), 
        .Y(temp_n20_net_1));
    DFN1E1 \temp[13]  (.D(temp_n13_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[13] ));
    NOR3C TC_RNO (.A(TC6_19), .B(TC6_18), .C(TC6_20), .Y(TC6));
    IOPAD_TRI \q_pad[8]/U0/U0  (.D(\q_pad[8]/U0/NET1 ), .E(
        \q_pad[8]/U0/NET2 ), .PAD(q[8]));
    XA1B temp_n9 (.A(temp_c8_net_1), .B(\q_c[9] ), .C(N_54), .Y(
        temp_n9_net_1));
    NOR2B temp_c20 (.A(temp_c19_net_1), .B(\q_c[20] ), .Y(
        temp_c20_net_1));
    NOR2A temp_48 (.A(\q_c[23] ), .B(N_54), .Y(N_103));
    XA1 temp_n12 (.A(temp_c11), .B(\q_c[12] ), .C(temp7_net_1), .Y(
        temp_n12_net_1));
    NOR3C temp_c18_m6_0_a2_6 (.A(TC6_10), .B(temp_c18_m6_0_a2_1_net_1), 
        .C(temp_c11_m6_0_a2_2_net_1), .Y(temp_c18_m6_0_a2_6_net_1));
    IOPAD_TRI \q_pad[14]/U0/U0  (.D(\q_pad[14]/U0/NET1 ), .E(
        \q_pad[14]/U0/NET2 ), .PAD(q[14]));
    IOPAD_TRI \q_pad[2]/U0/U0  (.D(\q_pad[2]/U0/NET1 ), .E(
        \q_pad[2]/U0/NET2 ), .PAD(q[2]));
    IOTRI_OB_EB \q_pad[0]/U0/U1  (.D(\q_c[0] ), .E(VCC), .DOUT(
        \q_pad[0]/U0/NET1 ), .EOUT(\q_pad[0]/U0/NET2 ));
    NOR3C temp_c15 (.A(temp_c15_out), .B(\q_c[13] ), .C(temp_c12_net_1)
        , .Y(temp_c15_net_1));
    NOR3C temp_c12 (.A(temp_c11_m6_0_a2_3_net_1), .B(
        temp_c11_m6_0_a2_4_2_net_1), .C(temp_c12_out), .Y(
        temp_c12_net_1));
    NOR3C temp_c14 (.A(\q_c[14] ), .B(\q_c[13] ), .C(temp_c12_net_1), 
        .Y(temp_c14_net_1));
    XA1B temp_n11_m6 (.A(temp_n11_N_11_mux), .B(\q_c[11] ), .C(N_54), 
        .Y(temp_n11));
    XA1B temp_n21 (.A(temp_c20_net_1), .B(\q_c[21] ), .C(N_54), .Y(
        temp_n21_net_1));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
