`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26
// File used only for Simulation


module skewCounter(
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

    wire clk_c, reset_c, en_c, TC_c, \q_c[0] , \q_c[1] , \q_c[2] , 
        \q_c[3] , \q_c[4] , \q_c[5] , \q_c[6] , \q_c[7] , \q_c[8] , 
        \q_c[9] , \q_c[10] , \q_c[11] , q_net_1, \q_c[12] , \q_c[13] , 
        \q_c[15] , TC6, temp7, temp_n11, N_14, temp_n10, temp_n9, 
        temp_n8, temp_n7, temp_n6, temp_n5, temp_n4, temp_n3, temp_n2, 
        temp_n1, N_82, \dff_2/q_3_i , \dff_2/q_3 , \dff_2/sQbar2 , 
        \dff_3/q_3_i , \dff_3/q_3 , \dff_3/sQbar3 , \dff_0/q_3_i , 
        \dff_0/q_3 , \dff_0/TC6_m6_0_a2_7_out_0 , 
        \dff_0/TC6_m6_0_a2_out , \dff_0/temp_26_0_net_1 , 
        \dff_0/temp_m3_0_a2_4_net_1 , \dff_0/temp_c1_net_1 , 
        \dff_0/temp_m3_0_a2_3_net_1 , \dff_0/temp_m3_0_a2_1_net_1 , 
        \dff_0/TC6_m6_0_a2_11_net_1 , \dff_0/TC6_m6_0_a2_9_net_1 , 
        \dff_0/TC6_m6_0_a2_7_net_1 , \dff_0/TC6_m6_0_a2_3_net_1 , 
        \dff_0/TC6_m6_0_a2_1_net_1 , \dff_0/N_62 , 
        \dff_0/temp_c8_net_1 , \dff_0/temp_c7 , \dff_0/temp_c2_net_1 , 
        \dff_0/temp_c3_net_1 , \dff_0/temp_c4_net_1 , 
        \dff_0/temp_c5_net_1 , \dff_0/temp_c6_net_1 , 
        \dff_0/temp_n10_tz_net_1 , \dff_0/sQbar0 , \dff_1/q_3_i , 
        \dff_1/q_3 , \dff_1/sQbar1 , \q_pad[12]/U0/NET1 , 
        \q_pad[12]/U0/NET2 , \en_pad/U0/NET1 , \q_pad[4]/U0/NET1 , 
        \q_pad[4]/U0/NET2 , \q_pad[9]/U0/NET1 , \q_pad[9]/U0/NET2 , 
        \q_pad[2]/U0/NET1 , \q_pad[2]/U0/NET2 , \q_pad[14]/U0/NET1 , 
        \q_pad[14]/U0/NET2 , \q_pad[10]/U0/NET1 , \q_pad[10]/U0/NET2 , 
        \q_pad[5]/U0/NET1 , \q_pad[5]/U0/NET2 , \q_pad[6]/U0/NET1 , 
        \q_pad[6]/U0/NET2 , \q_pad[15]/U0/NET1 , \q_pad[15]/U0/NET2 , 
        \reset_pad/U0/NET1 , \q_pad[8]/U0/NET1 , \q_pad[8]/U0/NET2 , 
        \q_pad[3]/U0/NET1 , \q_pad[3]/U0/NET2 , \q_pad[1]/U0/NET1 , 
        \q_pad[1]/U0/NET2 , \q_pad[11]/U0/NET1 , \q_pad[11]/U0/NET2 , 
        \q_pad[0]/U0/NET1 , \q_pad[0]/U0/NET2 , \q_pad[13]/U0/NET1 , 
        \q_pad[13]/U0/NET2 , \q_pad[7]/U0/NET1 , \q_pad[7]/U0/NET2 , 
        \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , VCC, \clk_pad/U0/NET1 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \en_pad/U0/U1  (.YIN(\en_pad/U0/NET1 ), .Y(en_c));
    NOR2B \dff_0/temp_c3  (.A(\dff_0/temp_c2_net_1 ), .B(\q_c[3] ), .Y(
        \dff_0/temp_c3_net_1 ));
    XA1B \dff_0/temp_n7  (.A(\dff_0/temp_c6_net_1 ), .B(\q_c[7] ), .C(
        reset_c), .Y(temp_n7));
    XA1B \dff_0/temp_n6  (.A(\dff_0/temp_c5_net_1 ), .B(\q_c[6] ), .C(
        reset_c), .Y(temp_n6));
    IOTRI_OB_EB \q_pad[14]/U0/U1  (.D(\q_c[13] ), .E(VCC), .DOUT(
        \q_pad[14]/U0/NET1 ), .EOUT(\q_pad[14]/U0/NET2 ));
    DFN1 \dff_0/qbar  (.D(\dff_0/q_3_i ), .CLK(clk_c), .Q(
        \dff_0/sQbar0 ));
    IOPAD_TRI \q_pad[15]/U0/U0  (.D(\q_pad[15]/U0/NET1 ), .E(
        \q_pad[15]/U0/NET2 ), .PAD(q[15]));
    DFN1 \dff_3/q  (.D(\dff_3/q_3 ), .CLK(\q_c[13] ), .Q(\q_c[15] ));
    NOR3B \dff_0/TC6_m6_0_a2_7  (.A(\dff_0/TC6_m6_0_a2_7_out_0 ), .B(
        \dff_0/TC6_m6_0_a2_3_net_1 ), .C(\q_c[0] ), .Y(
        \dff_0/TC6_m6_0_a2_7_net_1 ));
    IOPAD_TRI \q_pad[11]/U0/U0  (.D(\q_pad[11]/U0/NET1 ), .E(
        \q_pad[11]/U0/NET2 ), .PAD(q[11]));
    IOTRI_OB_EB \q_pad[0]/U0/U1  (.D(\q_c[0] ), .E(VCC), .DOUT(
        \q_pad[0]/U0/NET1 ), .EOUT(\q_pad[0]/U0/NET2 ));
    NOR2A \dff_1/qbar_RNIB39H  (.A(\dff_1/sQbar1 ), .B(reset_c), .Y(
        \dff_1/q_3 ));
    NOR3C \dff_0/TC6_m6_0_a2_3  (.A(\q_c[7] ), .B(
        \dff_0/TC6_m6_0_a2_1_net_1 ), .C(\q_c[1] ), .Y(
        \dff_0/TC6_m6_0_a2_3_net_1 ));
    NOR2A \dff_0/temp_n10  (.A(\dff_0/temp_n10_tz_net_1 ), .B(reset_c), 
        .Y(temp_n10));
    IOTRI_OB_EB \q_pad[7]/U0/U1  (.D(\q_c[7] ), .E(VCC), .DOUT(
        \q_pad[7]/U0/NET1 ), .EOUT(\q_pad[7]/U0/NET2 ));
    IOPAD_TRI \q_pad[10]/U0/U0  (.D(\q_pad[10]/U0/NET1 ), .E(
        \q_pad[10]/U0/NET2 ), .PAD(q[10]));
    DFN1E0 \temp[9]  (.D(temp_n9), .CLK(clk_c), .E(N_14), .Q(\q_c[9] ));
    NOR2B \dff_0/temp_m3_0_a2  (.A(\dff_0/temp_m3_0_a2_4_net_1 ), .B(
        \dff_0/temp_m3_0_a2_3_net_1 ), .Y(\dff_0/temp_c7 ));
    IOTRI_OB_EB \q_pad[1]/U0/U1  (.D(\q_c[1] ), .E(VCC), .DOUT(
        \q_pad[1]/U0/NET1 ), .EOUT(\q_pad[1]/U0/NET2 ));
    DFN1E0 \temp[3]  (.D(temp_n3), .CLK(clk_c), .E(N_14), .Q(\q_c[3] ));
    INV \dff_3/qbar_RNO  (.A(\dff_3/q_3 ), .Y(\dff_3/q_3_i ));
    IOPAD_TRI \q_pad[3]/U0/U0  (.D(\q_pad[3]/U0/NET1 ), .E(
        \q_pad[3]/U0/NET2 ), .PAD(q[3]));
    IOTRI_OB_EB \q_pad[2]/U0/U1  (.D(\q_c[2] ), .E(VCC), .DOUT(
        \q_pad[2]/U0/NET1 ), .EOUT(\q_pad[2]/U0/NET2 ));
    AX1 \dff_0/temp_n11  (.A(reset_c), .B(\q_c[11] ), .C(\dff_0/N_62 ), 
        .Y(temp_n11));
    NOR2B \dff_0/temp_c6  (.A(\dff_0/temp_c5_net_1 ), .B(\q_c[6] ), .Y(
        \dff_0/temp_c6_net_1 ));
    IOPAD_TRI \q_pad[12]/U0/U0  (.D(\q_pad[12]/U0/NET1 ), .E(
        \q_pad[12]/U0/NET2 ), .PAD(q[12]));
    DFN1 \dff_2/qbar  (.D(\dff_2/q_3_i ), .CLK(\q_c[12] ), .Q(
        \dff_2/sQbar2 ));
    XA1B \dff_0/temp_n4  (.A(\dff_0/temp_c3_net_1 ), .B(\q_c[4] ), .C(
        reset_c), .Y(temp_n4));
    IOPAD_TRI \q_pad[6]/U0/U0  (.D(\q_pad[6]/U0/NET1 ), .E(
        \q_pad[6]/U0/NET2 ), .PAD(q[6]));
    XA1B \dff_0/temp_n2  (.A(\dff_0/temp_c1_net_1 ), .B(\q_c[2] ), .C(
        reset_c), .Y(temp_n2));
    NOR3C \dff_0/q_inferred_clock_RNI1DH96  (.A(q_net_1), .B(
        \dff_0/TC6_m6_0_a2_11_net_1 ), .C(\dff_0/TC6_m6_0_a2_out ), .Y(
        TC6));
    IOTRI_OB_EB \q_pad[5]/U0/U1  (.D(\q_c[5] ), .E(VCC), .DOUT(
        \q_pad[5]/U0/NET1 ), .EOUT(\q_pad[5]/U0/NET2 ));
    INV \dff_0/qbar_RNO  (.A(\dff_0/q_3 ), .Y(\dff_0/q_3_i ));
    IOPAD_TRI \q_pad[14]/U0/U0  (.D(\q_pad[14]/U0/NET1 ), .E(
        \q_pad[14]/U0/NET2 ), .PAD(q[14]));
    IOTRI_OB_EB \q_pad[4]/U0/U1  (.D(\q_c[4] ), .E(VCC), .DOUT(
        \q_pad[4]/U0/NET1 ), .EOUT(\q_pad[4]/U0/NET2 ));
    DFN1E0 \temp[5]  (.D(temp_n5), .CLK(clk_c), .E(N_14), .Q(\q_c[5] ));
    NOR3C \dff_0/TC6_m6_0_a2_1  (.A(\q_c[11] ), .B(\q_c[15] ), .C(
        \q_c[8] ), .Y(\dff_0/TC6_m6_0_a2_1_net_1 ));
    INV \dff_2/qbar_RNO  (.A(\dff_2/q_3 ), .Y(\dff_2/q_3_i ));
    DFN1E0 \temp[1]  (.D(temp_n1), .CLK(clk_c), .E(N_14), .Q(\q_c[1] ));
    NOR2A \dff_0/temp_26_0  (.A(\q_c[10] ), .B(reset_c), .Y(
        \dff_0/temp_26_0_net_1 ));
    NOR3C \dff_0/TC6_m6_0_a2_11  (.A(\q_c[3] ), .B(
        \dff_0/TC6_m6_0_a2_9_net_1 ), .C(\q_c[2] ), .Y(
        \dff_0/TC6_m6_0_a2_11_net_1 ));
    AX1C \dff_0/temp_n10_tz  (.A(\q_c[9] ), .B(\dff_0/temp_c8_net_1 ), 
        .C(\q_c[10] ), .Y(\dff_0/temp_n10_tz_net_1 ));
    IOTRI_OB_EB \q_pad[8]/U0/U1  (.D(\q_c[8] ), .E(VCC), .DOUT(
        \q_pad[8]/U0/NET1 ), .EOUT(\q_pad[8]/U0/NET2 ));
    IOTRI_OB_EB \q_pad[13]/U0/U1  (.D(\q_c[12] ), .E(VCC), .DOUT(
        \q_pad[13]/U0/NET1 ), .EOUT(\q_pad[13]/U0/NET2 ));
    XA1B \dff_0/temp_n5  (.A(\dff_0/temp_c4_net_1 ), .B(\q_c[5] ), .C(
        reset_c), .Y(temp_n5));
    NOR2B \dff_0/temp_c4  (.A(\dff_0/temp_c3_net_1 ), .B(\q_c[4] ), .Y(
        \dff_0/temp_c4_net_1 ));
    DFN1E0 \temp[2]  (.D(temp_n2), .CLK(clk_c), .E(N_14), .Q(\q_c[2] ));
    IOPAD_TRI \q_pad[0]/U0/U0  (.D(\q_pad[0]/U0/NET1 ), .E(
        \q_pad[0]/U0/NET2 ), .PAD(q[0]));
    NOR2B \dff_0/temp_c2  (.A(\dff_0/temp_c1_net_1 ), .B(\q_c[2] ), .Y(
        \dff_0/temp_c2_net_1 ));
    CLKSRC \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    IOPAD_TRI \q_pad[7]/U0/U0  (.D(\q_pad[7]/U0/NET1 ), .E(
        \q_pad[7]/U0/NET2 ), .PAD(q[7]));
    IOIN_IB \reset_pad/U0/U1  (.YIN(\reset_pad/U0/NET1 ), .Y(reset_c));
    NOR2B \dff_0/temp_m3_0_a2_1  (.A(\q_c[4] ), .B(\q_c[3] ), .Y(
        \dff_0/temp_m3_0_a2_1_net_1 ));
    IOTRI_OB_EB \q_pad[9]/U0/U1  (.D(\q_c[9] ), .E(VCC), .DOUT(
        \q_pad[9]/U0/NET1 ), .EOUT(\q_pad[9]/U0/NET2 ));
    NOR3C \dff_0/TC6_m6_0_a2_9  (.A(\q_c[5] ), .B(
        \dff_0/TC6_m6_0_a2_7_net_1 ), .C(\q_c[4] ), .Y(
        \dff_0/TC6_m6_0_a2_9_net_1 ));
    IOPAD_TRI \q_pad[1]/U0/U0  (.D(\q_pad[1]/U0/NET1 ), .E(
        \q_pad[1]/U0/NET2 ), .PAD(q[1]));
    XA1B \dff_0/temp_n1  (.A(\q_c[1] ), .B(\q_c[0] ), .C(reset_c), .Y(
        temp_n1));
    DFN1 \dff_0/q  (.D(\dff_0/q_3 ), .CLK(clk_c), .Q(q_net_1));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    IOPAD_TRI \q_pad[2]/U0/U0  (.D(\q_pad[2]/U0/NET1 ), .E(
        \q_pad[2]/U0/NET2 ), .PAD(q[2]));
    XA1B \dff_0/temp_n8  (.A(\dff_0/temp_c7 ), .B(\q_c[8] ), .C(
        reset_c), .Y(temp_n8));
    IOPAD_IN \reset_pad/U0/U0  (.PAD(reset), .Y(\reset_pad/U0/NET1 ));
    XA1B \dff_0/temp_n9  (.A(\dff_0/temp_c8_net_1 ), .B(\q_c[9] ), .C(
        reset_c), .Y(temp_n9));
    NOR2B \dff_0/temp_c5  (.A(\dff_0/temp_c4_net_1 ), .B(\q_c[5] ), .Y(
        \dff_0/temp_c5_net_1 ));
    DFN1E0 \temp[6]  (.D(temp_n6), .CLK(clk_c), .E(N_14), .Q(\q_c[6] ));
    DFN1E0 \temp[11]  (.D(temp_n11), .CLK(clk_c), .E(N_14), .Q(
        \q_c[11] ));
    DFN1 \dff_1/q  (.D(\dff_1/q_3 ), .CLK(q_net_1), .Q(\q_c[12] ));
    DFN1E0 \temp[8]  (.D(temp_n8), .CLK(clk_c), .E(N_14), .Q(\q_c[8] ));
    DFN1E0 \temp[0]  (.D(N_82), .CLK(clk_c), .E(N_14), .Q(\q_c[0] ));
    NOR2 \dff_0/temp_n0  (.A(\q_c[0] ), .B(reset_c), .Y(N_82));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    IOPAD_TRI \q_pad[5]/U0/U0  (.D(\q_pad[5]/U0/NET1 ), .E(
        \q_pad[5]/U0/NET2 ), .PAD(q[5]));
    DFN1E0 \temp[4]  (.D(temp_n4), .CLK(clk_c), .E(N_14), .Q(\q_c[4] ));
    IOPAD_TRI \q_pad[4]/U0/U0  (.D(\q_pad[4]/U0/NET1 ), .E(
        \q_pad[4]/U0/NET2 ), .PAD(q[4]));
    IOPAD_TRI \q_pad[13]/U0/U0  (.D(\q_pad[13]/U0/NET1 ), .E(
        \q_pad[13]/U0/NET2 ), .PAD(q[13]));
    INV \dff_1/qbar_RNO  (.A(\dff_1/q_3 ), .Y(\dff_1/q_3_i ));
    NOR2A \dff_3/qbar_RNIDDTL  (.A(\dff_3/sQbar3 ), .B(reset_c), .Y(
        \dff_3/q_3 ));
    DFN1 \dff_2/q  (.D(\dff_2/q_3 ), .CLK(\q_c[12] ), .Q(\q_c[13] ));
    NOR2A \dff_0/temp7_0_a2  (.A(en_c), .B(reset_c), .Y(temp7));
    NOR2B \dff_0/TC6_m6_0_a2_s  (.A(\q_c[13] ), .B(\q_c[12] ), .Y(
        \dff_0/TC6_m6_0_a2_out ));
    NOR2B \dff_0/temp_c1  (.A(\q_c[1] ), .B(\q_c[0] ), .Y(
        \dff_0/temp_c1_net_1 ));
    NOR3C \dff_0/TC6_m6_0_a2_7_s_0  (.A(\q_c[6] ), .B(\q_c[9] ), .C(
        \q_c[10] ), .Y(\dff_0/TC6_m6_0_a2_7_out_0 ));
    NOR3C \dff_0/temp_26  (.A(\q_c[9] ), .B(\dff_0/temp_c8_net_1 ), .C(
        \dff_0/temp_26_0_net_1 ), .Y(\dff_0/N_62 ));
    IOTRI_OB_EB \q_pad[15]/U0/U1  (.D(\q_c[15] ), .E(VCC), .DOUT(
        \q_pad[15]/U0/NET1 ), .EOUT(\q_pad[15]/U0/NET2 ));
    NOR2B \dff_0/temp_c8  (.A(\dff_0/temp_c7 ), .B(\q_c[8] ), .Y(
        \dff_0/temp_c8_net_1 ));
    IOPAD_TRI \q_pad[8]/U0/U0  (.D(\q_pad[8]/U0/NET1 ), .E(
        \q_pad[8]/U0/NET2 ), .PAD(q[8]));
    IOTRI_OB_EB \q_pad[11]/U0/U1  (.D(\q_c[11] ), .E(VCC), .DOUT(
        \q_pad[11]/U0/NET1 ), .EOUT(\q_pad[11]/U0/NET2 ));
    XA1B \dff_0/temp_n3  (.A(\dff_0/temp_c2_net_1 ), .B(\q_c[3] ), .C(
        reset_c), .Y(temp_n3));
    NOR2A \dff_2/qbar_RNIC8JR  (.A(\dff_2/sQbar2 ), .B(reset_c), .Y(
        \dff_2/q_3 ));
    DFN1 \dff_1/qbar  (.D(\dff_1/q_3_i ), .CLK(q_net_1), .Q(
        \dff_1/sQbar1 ));
    NOR3C \dff_0/temp_m3_0_a2_3  (.A(\q_c[5] ), .B(\q_c[7] ), .C(
        \dff_0/temp_m3_0_a2_1_net_1 ), .Y(\dff_0/temp_m3_0_a2_3_net_1 )
        );
    DFN1 \dff_3/qbar  (.D(\dff_3/q_3_i ), .CLK(\q_c[13] ), .Q(
        \dff_3/sQbar3 ));
    NOR2 \dff_0/templde_i_a2  (.A(en_c), .B(reset_c), .Y(N_14));
    IOTRI_OB_EB \q_pad[3]/U0/U1  (.D(\q_c[3] ), .E(VCC), .DOUT(
        \q_pad[3]/U0/NET1 ), .EOUT(\q_pad[3]/U0/NET2 ));
    DFN1E1 TC_inst_1 (.D(TC6), .CLK(clk_c), .E(temp7), .Q(TC_c));
    NOR3C \dff_0/temp_m3_0_a2_4  (.A(\q_c[6] ), .B(\q_c[2] ), .C(
        \dff_0/temp_c1_net_1 ), .Y(\dff_0/temp_m3_0_a2_4_net_1 ));
    IOTRI_OB_EB \q_pad[10]/U0/U1  (.D(\q_c[10] ), .E(VCC), .DOUT(
        \q_pad[10]/U0/NET1 ), .EOUT(\q_pad[10]/U0/NET2 ));
    NOR2A \dff_0/qbar_RNIAUUM  (.A(\dff_0/sQbar0 ), .B(reset_c), .Y(
        \dff_0/q_3 ));
    IOPAD_TRI \q_pad[9]/U0/U0  (.D(\q_pad[9]/U0/NET1 ), .E(
        \q_pad[9]/U0/NET2 ), .PAD(q[9]));
    IOTRI_OB_EB \q_pad[6]/U0/U1  (.D(\q_c[6] ), .E(VCC), .DOUT(
        \q_pad[6]/U0/NET1 ), .EOUT(\q_pad[6]/U0/NET2 ));
    DFN1E0 \temp[7]  (.D(temp_n7), .CLK(clk_c), .E(N_14), .Q(\q_c[7] ));
    IOTRI_OB_EB \q_pad[12]/U0/U1  (.D(q_net_1), .E(VCC), .DOUT(
        \q_pad[12]/U0/NET1 ), .EOUT(\q_pad[12]/U0/NET2 ));
    IOPAD_IN \en_pad/U0/U0  (.PAD(en), .Y(\en_pad/U0/NET1 ));
    DFN1E0 \temp[10]  (.D(temp_n10), .CLK(clk_c), .E(N_14), .Q(
        \q_c[10] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
