`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module counter(
       clk,
       reset,
       q
    );
input  clk;
input  reset;
output [15:0] q;

    wire q_n1_net_1, q_n2_net_1, q_n3_net_1, q_n4_net_1, q_n5_net_1, 
        q_n6_net_1, q_n7_net_1, q_n8_net_1, q_n9_net_1, q_n10_net_1, 
        q_n11_net_1, q_n12_net_1, q_n13_net_1, q_n14_net_1, 
        q_n15_net_1, q_n0_net_1, N_65, q_c13_net_1, q_c11_net_1, 
        q_c9_net_1, q_c6_net_1, q_c5_net_1, q_c4_net_1, q_c3_net_1, 
        q_c2_net_1, q_c1_net_1, clk_c, reset_c, \q_c[0] , \q_c[1] , 
        \q_c[2] , \q_c[3] , \q_c[4] , \q_c[5] , \q_c[6] , \q_c[7] , 
        \q_c[8] , \q_c[9] , \q_c[10] , \q_c[11] , \q_c[12] , \q_c[13] , 
        \q_c[14] , \q_c[15] , q_n13_tz_net_1, q_n11_tz_net_1, 
        q_n9_tz_net_1, q_c8_m4_0_a2_0_net_1, q_c8_m4_0_a2_2_net_1, 
        q_c8_m4_0_a2_4_net_1, q_c8_m4_0_a2_5_net_1, q_32_0_net_1, 
        q_c7_net_1, \q_pad[12]/U0/NET1 , \q_pad[12]/U0/NET2 , 
        \q_pad[4]/U0/NET1 , \q_pad[4]/U0/NET2 , \q_pad[9]/U0/NET1 , 
        \q_pad[9]/U0/NET2 , \q_pad[2]/U0/NET1 , \q_pad[2]/U0/NET2 , 
        \q_pad[14]/U0/NET1 , \q_pad[14]/U0/NET2 , \q_pad[10]/U0/NET1 , 
        \q_pad[10]/U0/NET2 , \q_pad[5]/U0/NET1 , \q_pad[5]/U0/NET2 , 
        \q_pad[6]/U0/NET1 , \q_pad[6]/U0/NET2 , \q_pad[15]/U0/NET1 , 
        \q_pad[15]/U0/NET2 , \reset_pad/U0/NET1 , \q_pad[8]/U0/NET1 , 
        \q_pad[8]/U0/NET2 , \q_pad[3]/U0/NET1 , \q_pad[3]/U0/NET2 , 
        \q_pad[1]/U0/NET1 , \q_pad[1]/U0/NET2 , \q_pad[11]/U0/NET1 , 
        \q_pad[11]/U0/NET2 , \q_pad[0]/U0/NET1 , \q_pad[0]/U0/NET2 , 
        \q_pad[13]/U0/NET1 , \q_pad[13]/U0/NET2 , \q_pad[7]/U0/NET1 , 
        \q_pad[7]/U0/NET2 , VCC, \clk_pad/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XA1B q_n4 (.A(\q_c[4] ), .B(q_c3_net_1), .C(reset_c), .Y(
        q_n4_net_1));
    NOR2B q_c6 (.A(q_c5_net_1), .B(\q_c[6] ), .Y(q_c6_net_1));
    NOR2B q_c5 (.A(q_c4_net_1), .B(\q_c[5] ), .Y(q_c5_net_1));
    IOTRI_OB_EB \q_pad[14]/U0/U1  (.D(\q_c[14] ), .E(VCC), .DOUT(
        \q_pad[14]/U0/NET1 ), .EOUT(\q_pad[14]/U0/NET2 ));
    XA1B q_n7 (.A(\q_c[7] ), .B(q_c6_net_1), .C(reset_c), .Y(
        q_n7_net_1));
    NOR2B q_c4 (.A(q_c3_net_1), .B(\q_c[4] ), .Y(q_c4_net_1));
    DFN1 \q[11]  (.D(q_n11_net_1), .CLK(clk_c), .Q(\q_c[11] ));
    IOPAD_TRI \q_pad[15]/U0/U0  (.D(\q_pad[15]/U0/NET1 ), .E(
        \q_pad[15]/U0/NET2 ), .PAD(q[15]));
    IOPAD_TRI \q_pad[11]/U0/U0  (.D(\q_pad[11]/U0/NET1 ), .E(
        \q_pad[11]/U0/NET2 ), .PAD(q[11]));
    IOTRI_OB_EB \q_pad[0]/U0/U1  (.D(\q_c[0] ), .E(VCC), .DOUT(
        \q_pad[0]/U0/NET1 ), .EOUT(\q_pad[0]/U0/NET2 ));
    NOR2B q_c7 (.A(q_c6_net_1), .B(\q_c[7] ), .Y(q_c7_net_1));
    DFN1 \q[1]  (.D(q_n1_net_1), .CLK(clk_c), .Q(\q_c[1] ));
    IOTRI_OB_EB \q_pad[7]/U0/U1  (.D(\q_c[7] ), .E(VCC), .DOUT(
        \q_pad[7]/U0/NET1 ), .EOUT(\q_pad[7]/U0/NET2 ));
    IOPAD_TRI \q_pad[10]/U0/U0  (.D(\q_pad[10]/U0/NET1 ), .E(
        \q_pad[10]/U0/NET2 ), .PAD(q[10]));
    XA1B q_n8 (.A(\q_c[8] ), .B(q_c7_net_1), .C(reset_c), .Y(
        q_n8_net_1));
    NOR2 q_n0 (.A(\q_c[0] ), .B(reset_c), .Y(q_n0_net_1));
    NOR2A q_n11 (.A(q_n11_tz_net_1), .B(reset_c), .Y(q_n11_net_1));
    IOTRI_OB_EB \q_pad[1]/U0/U1  (.D(\q_c[1] ), .E(VCC), .DOUT(
        \q_pad[1]/U0/NET1 ), .EOUT(\q_pad[1]/U0/NET2 ));
    DFN1 \q[5]  (.D(q_n5_net_1), .CLK(clk_c), .Q(\q_c[5] ));
    IOPAD_TRI \q_pad[3]/U0/U0  (.D(\q_pad[3]/U0/NET1 ), .E(
        \q_pad[3]/U0/NET2 ), .PAD(q[3]));
    XA1B q_n10 (.A(\q_c[10] ), .B(q_c9_net_1), .C(reset_c), .Y(
        q_n10_net_1));
    IOTRI_OB_EB \q_pad[2]/U0/U1  (.D(\q_c[2] ), .E(VCC), .DOUT(
        \q_pad[2]/U0/NET1 ), .EOUT(\q_pad[2]/U0/NET2 ));
    DFN1 \q[10]  (.D(q_n10_net_1), .CLK(clk_c), .Q(\q_c[10] ));
    IOPAD_TRI \q_pad[12]/U0/U0  (.D(\q_pad[12]/U0/NET1 ), .E(
        \q_pad[12]/U0/NET2 ), .PAD(q[12]));
    IOPAD_TRI \q_pad[6]/U0/U0  (.D(\q_pad[6]/U0/NET1 ), .E(
        \q_pad[6]/U0/NET2 ), .PAD(q[6]));
    DFN1 \q[0]  (.D(q_n0_net_1), .CLK(clk_c), .Q(\q_c[0] ));
    NOR2A q_n13 (.A(q_n13_tz_net_1), .B(reset_c), .Y(q_n13_net_1));
    IOTRI_OB_EB \q_pad[5]/U0/U1  (.D(\q_c[5] ), .E(VCC), .DOUT(
        \q_pad[5]/U0/NET1 ), .EOUT(\q_pad[5]/U0/NET2 ));
    DFN1 \q[7]  (.D(q_n7_net_1), .CLK(clk_c), .Q(\q_c[7] ));
    IOPAD_TRI \q_pad[14]/U0/U0  (.D(\q_pad[14]/U0/NET1 ), .E(
        \q_pad[14]/U0/NET2 ), .PAD(q[14]));
    NOR3C q_c13 (.A(\q_c[12] ), .B(q_c11_net_1), .C(\q_c[13] ), .Y(
        q_c13_net_1));
    IOTRI_OB_EB \q_pad[4]/U0/U1  (.D(\q_c[4] ), .E(VCC), .DOUT(
        \q_pad[4]/U0/NET1 ), .EOUT(\q_pad[4]/U0/NET2 ));
    XA1B q_n1 (.A(\q_c[0] ), .B(\q_c[1] ), .C(reset_c), .Y(q_n1_net_1));
    AX1C q_n9_tz (.A(q_c8_m4_0_a2_4_net_1), .B(q_c8_m4_0_a2_5_net_1), 
        .C(\q_c[9] ), .Y(q_n9_tz_net_1));
    NOR2B q_c1 (.A(\q_c[0] ), .B(\q_c[1] ), .Y(q_c1_net_1));
    IOTRI_OB_EB \q_pad[8]/U0/U1  (.D(\q_c[8] ), .E(VCC), .DOUT(
        \q_pad[8]/U0/NET1 ), .EOUT(\q_pad[8]/U0/NET2 ));
    IOTRI_OB_EB \q_pad[13]/U0/U1  (.D(\q_c[13] ), .E(VCC), .DOUT(
        \q_pad[13]/U0/NET1 ), .EOUT(\q_pad[13]/U0/NET2 ));
    IOPAD_TRI \q_pad[0]/U0/U0  (.D(\q_pad[0]/U0/NET1 ), .E(
        \q_pad[0]/U0/NET2 ), .PAD(q[0]));
    NOR2A q_32_0 (.A(\q_c[14] ), .B(reset_c), .Y(q_32_0_net_1));
    DFN1 \q[3]  (.D(q_n3_net_1), .CLK(clk_c), .Q(\q_c[3] ));
    XA1B q_n3 (.A(\q_c[3] ), .B(q_c2_net_1), .C(reset_c), .Y(
        q_n3_net_1));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    IOPAD_TRI \q_pad[7]/U0/U0  (.D(\q_pad[7]/U0/NET1 ), .E(
        \q_pad[7]/U0/NET2 ), .PAD(q[7]));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    IOTRI_OB_EB \q_pad[9]/U0/U1  (.D(\q_c[9] ), .E(VCC), .DOUT(
        \q_pad[9]/U0/NET1 ), .EOUT(\q_pad[9]/U0/NET2 ));
    NOR2B q_c3 (.A(q_c2_net_1), .B(\q_c[3] ), .Y(q_c3_net_1));
    DFN1 \q[6]  (.D(q_n6_net_1), .CLK(clk_c), .Q(\q_c[6] ));
    DFN1 \q[9]  (.D(q_n9_net_1), .CLK(clk_c), .Q(\q_c[9] ));
    IOPAD_TRI \q_pad[1]/U0/U0  (.D(\q_pad[1]/U0/NET1 ), .E(
        \q_pad[1]/U0/NET2 ), .PAD(q[1]));
    XA1B q_n14 (.A(\q_c[14] ), .B(q_c13_net_1), .C(reset_c), .Y(
        q_n14_net_1));
    NOR3C q_c8_m4_0_a2_4 (.A(\q_c[3] ), .B(\q_c[4] ), .C(
        q_c8_m4_0_a2_2_net_1), .Y(q_c8_m4_0_a2_4_net_1));
    DFN1 \q[14]  (.D(q_n14_net_1), .CLK(clk_c), .Q(\q_c[14] ));
    DFN1 \q[13]  (.D(q_n13_net_1), .CLK(clk_c), .Q(\q_c[13] ));
    IOPAD_TRI \q_pad[2]/U0/U0  (.D(\q_pad[2]/U0/NET1 ), .E(
        \q_pad[2]/U0/NET2 ), .PAD(q[2]));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    NOR3C q_c11 (.A(\q_c[10] ), .B(q_c9_net_1), .C(\q_c[11] ), .Y(
        q_c11_net_1));
    DFN1 \q[2]  (.D(q_n2_net_1), .CLK(clk_c), .Q(\q_c[2] ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    IOPAD_TRI \q_pad[5]/U0/U0  (.D(\q_pad[5]/U0/NET1 ), .E(
        \q_pad[5]/U0/NET2 ), .PAD(q[5]));
    NOR2B q_c8_m4_0_a2_2 (.A(\q_c[2] ), .B(\q_c[6] ), .Y(
        q_c8_m4_0_a2_2_net_1));
    IOPAD_TRI \q_pad[4]/U0/U0  (.D(\q_pad[4]/U0/NET1 ), .E(
        \q_pad[4]/U0/NET2 ), .PAD(q[4]));
    IOPAD_TRI \q_pad[13]/U0/U0  (.D(\q_pad[13]/U0/NET1 ), .E(
        \q_pad[13]/U0/NET2 ), .PAD(q[13]));
    DFN1 \q[8]  (.D(q_n8_net_1), .CLK(clk_c), .Q(\q_c[8] ));
    IOTRI_OB_EB \q_pad[15]/U0/U1  (.D(\q_c[15] ), .E(VCC), .DOUT(
        \q_pad[15]/U0/NET1 ), .EOUT(\q_pad[15]/U0/NET2 ));
    DFN1 \q[12]  (.D(q_n12_net_1), .CLK(clk_c), .Q(\q_c[12] ));
    IOPAD_TRI \q_pad[8]/U0/U0  (.D(\q_pad[8]/U0/NET1 ), .E(
        \q_pad[8]/U0/NET2 ), .PAD(q[8]));
    IOTRI_OB_EB \q_pad[11]/U0/U1  (.D(\q_c[11] ), .E(VCC), .DOUT(
        \q_pad[11]/U0/NET1 ), .EOUT(\q_pad[11]/U0/NET2 ));
    DFN1 \q[15]  (.D(q_n15_net_1), .CLK(clk_c), .Q(\q_c[15] ));
    IOTRI_OB_EB \q_pad[3]/U0/U1  (.D(\q_c[3] ), .E(VCC), .DOUT(
        \q_pad[3]/U0/NET1 ), .EOUT(\q_pad[3]/U0/NET2 ));
    NOR2B q_c8_m4_0_a2_0 (.A(\q_c[8] ), .B(\q_c[5] ), .Y(
        q_c8_m4_0_a2_0_net_1));
    DFN1 \q[4]  (.D(q_n4_net_1), .CLK(clk_c), .Q(\q_c[4] ));
    XA1B q_n2 (.A(\q_c[2] ), .B(q_c1_net_1), .C(reset_c), .Y(
        q_n2_net_1));
    AX1C q_n11_tz (.A(\q_c[10] ), .B(q_c9_net_1), .C(\q_c[11] ), .Y(
        q_n11_tz_net_1));
    IOTRI_OB_EB \q_pad[10]/U0/U1  (.D(\q_c[10] ), .E(VCC), .DOUT(
        \q_pad[10]/U0/NET1 ), .EOUT(\q_pad[10]/U0/NET2 ));
    IOPAD_TRI \q_pad[9]/U0/U0  (.D(\q_pad[9]/U0/NET1 ), .E(
        \q_pad[9]/U0/NET2 ), .PAD(q[9]));
    NOR2A q_33 (.A(\q_c[15] ), .B(reset_c), .Y(N_65));
    IOTRI_OB_EB \q_pad[6]/U0/U1  (.D(\q_c[6] ), .E(VCC), .DOUT(
        \q_pad[6]/U0/NET1 ), .EOUT(\q_pad[6]/U0/NET2 ));
    NOR2B q_c2 (.A(q_c1_net_1), .B(\q_c[2] ), .Y(q_c2_net_1));
    AX1C q_n15 (.A(q_c13_net_1), .B(q_32_0_net_1), .C(N_65), .Y(
        q_n15_net_1));
    NOR3C q_c8_m4_0_a2_5 (.A(q_c8_m4_0_a2_0_net_1), .B(\q_c[7] ), .C(
        q_c1_net_1), .Y(q_c8_m4_0_a2_5_net_1));
    NOR2A q_n9 (.A(q_n9_tz_net_1), .B(reset_c), .Y(q_n9_net_1));
    IOTRI_OB_EB \q_pad[12]/U0/U1  (.D(\q_c[12] ), .E(VCC), .DOUT(
        \q_pad[12]/U0/NET1 ), .EOUT(\q_pad[12]/U0/NET2 ));
    XA1B q_n6 (.A(\q_c[6] ), .B(q_c5_net_1), .C(reset_c), .Y(
        q_n6_net_1));
    AX1C q_n13_tz (.A(\q_c[12] ), .B(q_c11_net_1), .C(\q_c[13] ), .Y(
        q_n13_tz_net_1));
    XA1B q_n12 (.A(\q_c[12] ), .B(q_c11_net_1), .C(reset_c), .Y(
        q_n12_net_1));
    XA1B q_n5 (.A(\q_c[5] ), .B(q_c4_net_1), .C(reset_c), .Y(
        q_n5_net_1));
    NOR3C q_c9 (.A(q_c8_m4_0_a2_4_net_1), .B(q_c8_m4_0_a2_5_net_1), .C(
        \q_c[9] ), .Y(q_c9_net_1));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
