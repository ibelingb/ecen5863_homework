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
output [15:0] q;

    wire clk_c, N_38, en_c, TC_c, \q_c[0] , \q_c[1] , \q_c[2] , 
        \q_c[3] , \q_c[4] , \q_c[5] , \q_c[6] , \q_c[7] , \q_c[8] , 
        \q_c[9] , \q_c[10] , \q_c[11] , \q_c[12] , \q_c[13] , 
        \q_c[14] , \q_c[15] , tempe, temp_n15_net_1, temp_n14_net_1, 
        temp_n13_net_1, temp_n12_net_1, temp_n11, temp_n10, 
        temp_n9_net_1, temp_n8_net_1, temp_n1_net_1, N_90, N_71, 
        temp_c13_net_1, temp_c12_net_1, temp_c11, temp_c7_net_1, 
        temp7_net_1, temp_c1_net_1, temp_c2_net_1, temp_c3_net_1, 
        temp_c4_net_1, temp_c5_net_1, temp_c6_net_1, temp_n2_net_1, 
        temp_n3_net_1, temp_n4_net_1, temp_n5_net_1, temp_n6_net_1, 
        temp_n7_net_1, TC6, temp_n11_N_11_mux, temp_n10_N_11_mux, 
        TC6_1, TC6_3, TC6_4, TC6_6, TC6_7, TC6_8, TC6_9, TC6_10, 
        TC6_13, temp_n10_m4_0_a2_3_net_1, temp_n10_m4_0_a2_4_net_1, 
        temp_c11_m6_0_a2_0_net_1, temp_c11_m6_0_a2_5_net_1, 
        temp_c11_m6_0_a2_6_net_1, temp_n11_m4_0_a2_3_net_1, 
        temp_n11_m4_0_a2_4_net_1, temp_31_0_net_1, temp_c5_out, 
        temp_c8_net_1, \q_pad[12]/U0/NET1 , \q_pad[12]/U0/NET2 , 
        \en_pad/U0/NET1 , \q_pad[4]/U0/NET1 , \q_pad[4]/U0/NET2 , 
        \q_pad[9]/U0/NET1 , \q_pad[9]/U0/NET2 , \q_pad[2]/U0/NET1 , 
        \q_pad[2]/U0/NET2 , \q_pad[14]/U0/NET1 , \q_pad[14]/U0/NET2 , 
        \q_pad[10]/U0/NET1 , \q_pad[10]/U0/NET2 , \q_pad[5]/U0/NET1 , 
        \q_pad[5]/U0/NET2 , \q_pad[6]/U0/NET1 , \q_pad[6]/U0/NET2 , 
        \q_pad[15]/U0/NET1 , \q_pad[15]/U0/NET2 , \reset_pad/U0/NET1 , 
        \q_pad[8]/U0/NET1 , \q_pad[8]/U0/NET2 , \q_pad[3]/U0/NET1 , 
        \q_pad[3]/U0/NET2 , \q_pad[1]/U0/NET1 , \q_pad[1]/U0/NET2 , 
        \q_pad[11]/U0/NET1 , \q_pad[11]/U0/NET2 , \q_pad[0]/U0/NET1 , 
        \q_pad[0]/U0/NET2 , \q_pad[13]/U0/NET1 , \q_pad[13]/U0/NET2 , 
        \q_pad[7]/U0/NET1 , \q_pad[7]/U0/NET2 , \TC_pad/U0/NET1 , 
        \TC_pad/U0/NET2 , VCC, \clk_pad/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3C temp_n11_m4_0_a2 (.A(temp_n11_m4_0_a2_4_net_1), .B(
        temp_n11_m4_0_a2_3_net_1), .C(temp_c3_net_1), .Y(
        temp_n11_N_11_mux));
    IOIN_IB \en_pad/U0/U1  (.YIN(\en_pad/U0/NET1 ), .Y(en_c));
    NOR2A temp7 (.A(en_c), .B(N_38), .Y(temp7_net_1));
    NOR2B TC_RNO_3 (.A(\q_c[1] ), .B(\q_c[2] ), .Y(TC6_3));
    IOTRI_OB_EB \q_pad[14]/U0/U1  (.D(\q_c[14] ), .E(VCC), .DOUT(
        \q_pad[14]/U0/NET1 ), .EOUT(\q_pad[14]/U0/NET2 ));
    NOR3C TC_RNO_5 (.A(\q_c[4] ), .B(\q_c[3] ), .C(TC6_4), .Y(TC6_10));
    IOPAD_TRI \q_pad[15]/U0/U0  (.D(\q_pad[15]/U0/NET1 ), .E(
        \q_pad[15]/U0/NET2 ), .PAD(q[15]));
    IOPAD_TRI \q_pad[11]/U0/U0  (.D(\q_pad[11]/U0/NET1 ), .E(
        \q_pad[11]/U0/NET2 ), .PAD(q[11]));
    NOR2B temp_c5_s (.A(\q_c[4] ), .B(\q_c[5] ), .Y(temp_c5_out));
    DFN1E1 \temp[15]  (.D(temp_n15_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[15] ));
    IOTRI_OB_EB \q_pad[0]/U0/U1  (.D(\q_c[0] ), .E(VCC), .DOUT(
        \q_pad[0]/U0/NET1 ), .EOUT(\q_pad[0]/U0/NET2 ));
    XA1 temp_n7 (.A(temp_c6_net_1), .B(\q_c[7] ), .C(temp7_net_1), .Y(
        temp_n7_net_1));
    XA1 temp_n5 (.A(temp_c4_net_1), .B(\q_c[5] ), .C(temp7_net_1), .Y(
        temp_n5_net_1));
    IOTRI_OB_EB \q_pad[7]/U0/U1  (.D(\q_c[7] ), .E(VCC), .DOUT(
        \q_pad[7]/U0/NET1 ), .EOUT(\q_pad[7]/U0/NET2 ));
    IOPAD_TRI \q_pad[10]/U0/U0  (.D(\q_pad[10]/U0/NET1 ), .E(
        \q_pad[10]/U0/NET2 ), .PAD(q[10]));
    DFN1E1 \temp[9]  (.D(temp_n9_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[9] ));
    DFN1E1 \temp[12]  (.D(temp_n12_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[12] ));
    IOTRI_OB_EB \q_pad[1]/U0/U1  (.D(\q_c[1] ), .E(VCC), .DOUT(
        \q_pad[1]/U0/NET1 ), .EOUT(\q_pad[1]/U0/NET2 ));
    XA1 temp_n6 (.A(temp_c5_net_1), .B(\q_c[6] ), .C(temp7_net_1), .Y(
        temp_n6_net_1));
    DFN1E1 \temp[3]  (.D(temp_n3_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[3] ));
    NOR3C TC_RNO_2 (.A(TC6_7), .B(TC6_6), .C(TC6_10), .Y(TC6_13));
    IOPAD_TRI \q_pad[3]/U0/U0  (.D(\q_pad[3]/U0/NET1 ), .E(
        \q_pad[3]/U0/NET2 ), .PAD(q[3]));
    IOTRI_OB_EB \q_pad[2]/U0/U1  (.D(\q_c[2] ), .E(VCC), .DOUT(
        \q_pad[2]/U0/NET1 ), .EOUT(\q_pad[2]/U0/NET2 ));
    IOPAD_TRI \q_pad[12]/U0/U0  (.D(\q_pad[12]/U0/NET1 ), .E(
        \q_pad[12]/U0/NET2 ), .PAD(q[12]));
    NOR3C TC_RNO_1 (.A(\q_c[12] ), .B(\q_c[15] ), .C(TC6_1), .Y(TC6_8));
    NOR2B TC_RNO_4 (.A(\q_c[11] ), .B(\q_c[14] ), .Y(TC6_1));
    NOR3B TC_RNO_0 (.A(\q_c[13] ), .B(TC6_3), .C(\q_c[0] ), .Y(TC6_9));
    IOPAD_TRI \q_pad[6]/U0/U0  (.D(\q_pad[6]/U0/NET1 ), .E(
        \q_pad[6]/U0/NET2 ), .PAD(q[6]));
    NOR2B \temp_RNIBFPV[7]  (.A(\q_c[8] ), .B(\q_c[7] ), .Y(TC6_7));
    IOTRI_OB_EB \q_pad[5]/U0/U1  (.D(\q_c[5] ), .E(VCC), .DOUT(
        \q_pad[5]/U0/NET1 ), .EOUT(\q_pad[5]/U0/NET2 ));
    NOR2B temp_c13 (.A(temp_c12_net_1), .B(\q_c[13] ), .Y(
        temp_c13_net_1));
    NOR2B temp_c1 (.A(\q_c[1] ), .B(\q_c[0] ), .Y(temp_c1_net_1));
    IOPAD_TRI \q_pad[14]/U0/U0  (.D(\q_pad[14]/U0/NET1 ), .E(
        \q_pad[14]/U0/NET2 ), .PAD(q[14]));
    IOTRI_OB_EB \q_pad[4]/U0/U1  (.D(\q_c[4] ), .E(VCC), .DOUT(
        \q_pad[4]/U0/NET1 ), .EOUT(\q_pad[4]/U0/NET2 ));
    NOR3C temp_c11_m6_0_a2 (.A(temp_c11_m6_0_a2_6_net_1), .B(
        temp_c11_m6_0_a2_5_net_1), .C(temp_c2_net_1), .Y(temp_c11));
    DFN1E1 \temp[5]  (.D(temp_n5_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[5] ));
    NOR3C temp_c3 (.A(\q_c[2] ), .B(\q_c[3] ), .C(temp_c1_net_1), .Y(
        temp_c3_net_1));
    NOR3C temp_n10_m4_0_a2_3 (.A(\q_c[3] ), .B(\q_c[9] ), .C(\q_c[8] ), 
        .Y(temp_n10_m4_0_a2_3_net_1));
    DFN1E1 \temp[1]  (.D(temp_n1_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[1] ));
    IOTRI_OB_EB \q_pad[8]/U0/U1  (.D(\q_c[8] ), .E(VCC), .DOUT(
        \q_pad[8]/U0/NET1 ), .EOUT(\q_pad[8]/U0/NET2 ));
    IOTRI_OB_EB \q_pad[13]/U0/U1  (.D(\q_c[13] ), .E(VCC), .DOUT(
        \q_pad[13]/U0/NET1 ), .EOUT(\q_pad[13]/U0/NET2 ));
    NOR2B \temp_RNIMT8S[10]  (.A(\q_c[10] ), .B(\q_c[9] ), .Y(TC6_4));
    NOR3C temp_n10_m4_0_a2 (.A(temp_n10_m4_0_a2_4_net_1), .B(
        temp_n10_m4_0_a2_3_net_1), .C(temp_c2_net_1), .Y(
        temp_n10_N_11_mux));
    NOR2B temp_c8 (.A(temp_c7_net_1), .B(\q_c[8] ), .Y(temp_c8_net_1));
    NOR2A temp_32 (.A(\q_c[15] ), .B(N_38), .Y(N_71));
    DFN1E1 \temp[2]  (.D(temp_n2_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[2] ));
    IOPAD_TRI \q_pad[0]/U0/U0  (.D(\q_pad[0]/U0/NET1 ), .E(
        \q_pad[0]/U0/NET2 ), .PAD(q[0]));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    NOR2B temp_c2 (.A(temp_c1_net_1), .B(\q_c[2] ), .Y(temp_c2_net_1));
    NOR3C temp_c11_m6_0_a2_5 (.A(\q_c[3] ), .B(\q_c[9] ), .C(TC6_7), 
        .Y(temp_c11_m6_0_a2_5_net_1));
    IOPAD_TRI \q_pad[7]/U0/U0  (.D(\q_pad[7]/U0/NET1 ), .E(
        \q_pad[7]/U0/NET2 ), .PAD(q[7]));
    XA1B temp_n10_m6 (.A(temp_n10_N_11_mux), .B(\q_c[10] ), .C(N_38), 
        .Y(temp_n10));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(N_38));
    NOR2B temp_c11_m6_0_a2_0 (.A(\q_c[11] ), .B(\q_c[10] ), .Y(
        temp_c11_m6_0_a2_0_net_1));
    IOTRI_OB_EB \q_pad[9]/U0/U1  (.D(\q_c[9] ), .E(VCC), .DOUT(
        \q_pad[9]/U0/NET1 ), .EOUT(\q_pad[9]/U0/NET2 ));
    IOPAD_TRI \q_pad[1]/U0/U0  (.D(\q_pad[1]/U0/NET1 ), .E(
        \q_pad[1]/U0/NET2 ), .PAD(q[1]));
    NOR2B temp_c4 (.A(temp_c3_net_1), .B(\q_c[4] ), .Y(temp_c4_net_1));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    AX1C temp_n15 (.A(temp_c13_net_1), .B(temp_31_0_net_1), .C(N_71), 
        .Y(temp_n15_net_1));
    IOPAD_TRI \q_pad[2]/U0/U0  (.D(\q_pad[2]/U0/NET1 ), .E(
        \q_pad[2]/U0/NET2 ), .PAD(q[2]));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    XA1B temp_n11_m6 (.A(temp_n11_N_11_mux), .B(\q_c[11] ), .C(N_38), 
        .Y(temp_n11));
    XA1B temp_n14 (.A(temp_c13_net_1), .B(\q_c[14] ), .C(N_38), .Y(
        temp_n14_net_1));
    XA1B temp_n1 (.A(\q_c[1] ), .B(\q_c[0] ), .C(N_38), .Y(
        temp_n1_net_1));
    NOR2 temp_n0 (.A(\q_c[0] ), .B(N_38), .Y(N_90));
    NOR2B temp_c12 (.A(temp_c11), .B(\q_c[12] ), .Y(temp_c12_net_1));
    DFN1E1 \temp[6]  (.D(temp_n6_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[6] ));
    DFN1E1 \temp[11]  (.D(temp_n11), .CLK(clk_c), .E(tempe), .Q(
        \q_c[11] ));
    DFN1E1 \temp[8]  (.D(temp_n8_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[8] ));
    DFN1E1 \temp[0]  (.D(N_90), .CLK(clk_c), .E(tempe), .Q(\q_c[0] ));
    OR2 templde (.A(en_c), .B(N_38), .Y(tempe));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    XA1B temp_n9 (.A(temp_c8_net_1), .B(\q_c[9] ), .C(N_38), .Y(
        temp_n9_net_1));
    XA1 temp_n3 (.A(\q_c[3] ), .B(temp_c2_net_1), .C(temp7_net_1), .Y(
        temp_n3_net_1));
    IOPAD_TRI \q_pad[5]/U0/U0  (.D(\q_pad[5]/U0/NET1 ), .E(
        \q_pad[5]/U0/NET2 ), .PAD(q[5]));
    NOR3C temp_c11_m6_0_a2_6 (.A(temp_c11_m6_0_a2_0_net_1), .B(
        \q_c[4] ), .C(TC6_6), .Y(temp_c11_m6_0_a2_6_net_1));
    DFN1E1 \temp[4]  (.D(temp_n4_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[4] ));
    DFN1E1 \temp[14]  (.D(temp_n14_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[14] ));
    IOPAD_TRI \q_pad[4]/U0/U0  (.D(\q_pad[4]/U0/NET1 ), .E(
        \q_pad[4]/U0/NET2 ), .PAD(q[4]));
    IOPAD_TRI \q_pad[13]/U0/U0  (.D(\q_pad[13]/U0/NET1 ), .E(
        \q_pad[13]/U0/NET2 ), .PAD(q[13]));
    XA1B temp_n8 (.A(temp_c7_net_1), .B(\q_c[8] ), .C(N_38), .Y(
        temp_n8_net_1));
    NOR3C TC_RNO (.A(TC6_9), .B(TC6_8), .C(TC6_13), .Y(TC6));
    XA1B temp_n13 (.A(temp_c12_net_1), .B(\q_c[13] ), .C(N_38), .Y(
        temp_n13_net_1));
    NOR3C temp_n11_m4_0_a2_4 (.A(\q_c[6] ), .B(\q_c[7] ), .C(
        temp_c5_out), .Y(temp_n11_m4_0_a2_4_net_1));
    IOTRI_OB_EB \q_pad[15]/U0/U1  (.D(\q_c[15] ), .E(VCC), .DOUT(
        \q_pad[15]/U0/NET1 ), .EOUT(\q_pad[15]/U0/NET2 ));
    XA1 temp_n2 (.A(\q_c[2] ), .B(temp_c1_net_1), .C(temp7_net_1), .Y(
        temp_n2_net_1));
    NOR2B temp_c7 (.A(temp_c6_net_1), .B(\q_c[7] ), .Y(temp_c7_net_1));
    IOPAD_TRI \q_pad[8]/U0/U0  (.D(\q_pad[8]/U0/NET1 ), .E(
        \q_pad[8]/U0/NET2 ), .PAD(q[8]));
    IOTRI_OB_EB \q_pad[11]/U0/U1  (.D(\q_c[11] ), .E(VCC), .DOUT(
        \q_pad[11]/U0/NET1 ), .EOUT(\q_pad[11]/U0/NET2 ));
    NOR2B temp_c5 (.A(temp_c3_net_1), .B(temp_c5_out), .Y(
        temp_c5_net_1));
    IOTRI_OB_EB \q_pad[3]/U0/U1  (.D(\q_c[3] ), .E(VCC), .DOUT(
        \q_pad[3]/U0/NET1 ), .EOUT(\q_pad[3]/U0/NET2 ));
    DFN1E1 TC_inst_1 (.D(TC6), .CLK(clk_c), .E(temp7_net_1), .Q(TC_c));
    XA1 temp_n4 (.A(\q_c[4] ), .B(temp_c3_net_1), .C(temp7_net_1), .Y(
        temp_n4_net_1));
    NOR2B temp_n11_m4_0_a2_3 (.A(\q_c[8] ), .B(TC6_4), .Y(
        temp_n11_m4_0_a2_3_net_1));
    IOTRI_OB_EB \q_pad[10]/U0/U1  (.D(\q_c[10] ), .E(VCC), .DOUT(
        \q_pad[10]/U0/NET1 ), .EOUT(\q_pad[10]/U0/NET2 ));
    IOPAD_TRI \q_pad[9]/U0/U0  (.D(\q_pad[9]/U0/NET1 ), .E(
        \q_pad[9]/U0/NET2 ), .PAD(q[9]));
    NOR2B temp_c6 (.A(temp_c5_net_1), .B(\q_c[6] ), .Y(temp_c6_net_1));
    IOTRI_OB_EB \q_pad[6]/U0/U1  (.D(\q_c[6] ), .E(VCC), .DOUT(
        \q_pad[6]/U0/NET1 ), .EOUT(\q_pad[6]/U0/NET2 ));
    NOR3C temp_n10_m4_0_a2_4 (.A(\q_c[7] ), .B(\q_c[4] ), .C(TC6_6), 
        .Y(temp_n10_m4_0_a2_4_net_1));
    NOR2B \temp_RNI7BPV[5]  (.A(\q_c[5] ), .B(\q_c[6] ), .Y(TC6_6));
    NOR2A temp_31_0 (.A(\q_c[14] ), .B(N_38), .Y(temp_31_0_net_1));
    DFN1E1 \temp[13]  (.D(temp_n13_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[13] ));
    DFN1E1 \temp[7]  (.D(temp_n7_net_1), .CLK(clk_c), .E(tempe), .Q(
        \q_c[7] ));
    IOTRI_OB_EB \q_pad[12]/U0/U1  (.D(\q_c[12] ), .E(VCC), .DOUT(
        \q_pad[12]/U0/NET1 ), .EOUT(\q_pad[12]/U0/NET2 ));
    IOPAD_IN \en_pad/U0/U0  (.PAD(en), .Y(\en_pad/U0/NET1 ));
    XA1B temp_n12 (.A(temp_c11), .B(\q_c[12] ), .C(N_38), .Y(
        temp_n12_net_1));
    DFN1E1 \temp[10]  (.D(temp_n10), .CLK(clk_c), .E(tempe), .Q(
        \q_c[10] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
