`timescale 1 ns/100 ps
// Version: v11.8 11.8.0.26


module counter16(
       clock,
       reset,
       counter
    );
input  clock;
input  reset;
output [15:0] counter;

    wire count_n9, count_n10, count_n11, count_n12, count_n13, 
        count_n14, count_n15, GND, VCC, N_13, N_15, N_17, N_19, N_21, 
        N_23, N_25, N_28, N_29, N_30, N_31, N_33, N_38, N_40, N_71, 
        N_72, N_89, N_92, N_93, N_95, clock_c, reset_c, \counter_c[0] , 
        \counter_c[1] , \counter_c[2] , \counter_c[3] , \counter_c[4] , 
        \counter_c[5] , \counter_c[6] , \counter_c[7] , \counter_c[8] , 
        \counter_c[9] , \counter_c[10] , \counter_c[11] , 
        \counter_c[12] , \counter_c[13] , \counter_c[14] , 
        \counter_c[15] , count_n11_0_o2_N_13_mux, count_n10_0_N_11_mux, 
        count_n8_i_N_9_mux, count_n8_i_m5_net_1, count_n9_0_N_11_mux, 
        count_n9_0_m4_e_3_net_1, count_n9_0_m4_e_4_net_1, 
        count_n9_0_m4_e_0, count_n11_0_o2_m6_0_a2_4_net_1, 
        count_n11_0_o2_m6_0_a2_6_net_1, count_n11_0_o2_m6_0_a2_7_net_1, 
        count_n9_0_m4_e_1, count_n8_i_m3_0_a2_3_net_1, 
        count_n8_i_m3_0_a2_1, count_n10_0_m4_0_a2_3_net_1, 
        count_n10_0_m4_0_a2_4_net_1, count_n3_i_o2_out, 
        count_n15_0_o2_out, count_n4_i_o2_out;
    
    NOR3C count_n11_0_o2_m6_0_a2_6 (.A(\counter_c[4] ), .B(
        \counter_c[5] ), .C(count_n11_0_o2_m6_0_a2_4_net_1), .Y(
        count_n11_0_o2_m6_0_a2_6_net_1));
    XA1B count_n11_0 (.A(\counter_c[11] ), .B(count_n11_0_o2_N_13_mux), 
        .C(reset_c), .Y(count_n11));
    OUTBUF \counter_pad[14]  (.D(\counter_c[14] ), .PAD(counter[14]));
    OR3B count_n14_0_o2 (.A(\counter_c[13] ), .B(\counter_c[12] ), .C(
        N_38), .Y(N_71));
    NOR3B count_n10_0_m4_0_a2 (.A(count_n10_0_m4_0_a2_4_net_1), .B(
        count_n10_0_m4_0_a2_3_net_1), .C(N_29), .Y(
        count_n10_0_N_11_mux));
    DFN1 \count[5]  (.D(N_17), .CLK(clock_c), .Q(\counter_c[5] ));
    OUTBUF \counter_pad[15]  (.D(\counter_c[15] ), .PAD(counter[15]));
    DFN1 \count[1]  (.D(N_25), .CLK(clock_c), .Q(\counter_c[1] ));
    XA1B count_n1_i (.A(\counter_c[0] ), .B(\counter_c[1] ), .C(
        reset_c), .Y(N_25));
    OUTBUF \counter_pad[9]  (.D(\counter_c[9] ), .PAD(counter[9]));
    NOR3C count_n9_0_m4_e_4 (.A(\counter_c[4] ), .B(\counter_c[5] ), 
        .C(count_n9_0_m4_e_1), .Y(count_n9_0_m4_e_4_net_1));
    DFN1 \count[10]  (.D(count_n10), .CLK(clock_c), .Q(\counter_c[10] )
        );
    DFN1 \count[0]  (.D(N_95), .CLK(clock_c), .Q(\counter_c[0] ));
    NOR3B count_n9_0_m4_e (.A(count_n9_0_m4_e_4_net_1), .B(
        count_n9_0_m4_e_3_net_1), .C(N_28), .Y(count_n9_0_N_11_mux));
    DFN1 \count[14]  (.D(count_n14), .CLK(clock_c), .Q(\counter_c[14] )
        );
    OUTBUF \counter_pad[11]  (.D(\counter_c[11] ), .PAD(counter[11]));
    OR2B count_n12_0_o2 (.A(count_n11_0_o2_N_13_mux), .B(
        \counter_c[11] ), .Y(N_38));
    OUTBUF \counter_pad[5]  (.D(\counter_c[5] ), .PAD(counter[5]));
    OR3B count_n7_i_o2 (.A(\counter_c[6] ), .B(\counter_c[5] ), .C(
        N_31), .Y(N_33));
    XA1C count_n15_0 (.A(\counter_c[15] ), .B(N_72), .C(reset_c), .Y(
        count_n15));
    XA1B count_n8_i_m5 (.A(count_n8_i_N_9_mux), .B(\counter_c[8] ), .C(
        reset_c), .Y(count_n8_i_m5_net_1));
    NOR2B count_n11_0_o2_m6_0_a2_1 (.A(\counter_c[8] ), .B(
        \counter_c[2] ), .Y(count_n9_0_m4_e_0));
    OUTBUF \counter_pad[1]  (.D(\counter_c[1] ), .PAD(counter[1]));
    NOR3B count_n11_0_o2_m6_0_a2_7 (.A(count_n9_0_m4_e_1), .B(
        count_n9_0_m4_e_0), .C(N_28), .Y(
        count_n11_0_o2_m6_0_a2_7_net_1));
    VCC VCC_i (.Y(VCC));
    XA1C count_n5_i (.A(\counter_c[5] ), .B(N_31), .C(reset_c), .Y(
        N_17));
    NOR2B count_n10_0_m4_0_a2_2 (.A(\counter_c[4] ), .B(\counter_c[3] )
        , .Y(count_n8_i_m3_0_a2_1));
    OUTBUF \counter_pad[8]  (.D(\counter_c[8] ), .PAD(counter[8]));
    NOR2 count_n0_i_a2 (.A(\counter_c[0] ), .B(reset_c), .Y(N_95));
    DFN1 \count[8]  (.D(count_n8_i_m5_net_1), .CLK(clock_c), .Q(
        \counter_c[8] ));
    XA1C count_n14_0 (.A(\counter_c[14] ), .B(N_71), .C(reset_c), .Y(
        count_n14));
    OR2B count_n2_i_o2 (.A(\counter_c[1] ), .B(\counter_c[0] ), .Y(
        N_28));
    DFN1 \count[15]  (.D(count_n15), .CLK(clock_c), .Q(\counter_c[15] )
        );
    DFN1 \count[11]  (.D(count_n11), .CLK(clock_c), .Q(\counter_c[11] )
        );
    XA1B count_n9_0_m6 (.A(count_n9_0_N_11_mux), .B(\counter_c[9] ), 
        .C(reset_c), .Y(count_n9));
    OR2 count_n15_0_o2 (.A(N_38), .B(count_n15_0_o2_out), .Y(N_72));
    NOR2A count_n2_i_a2 (.A(N_28), .B(\counter_c[2] ), .Y(N_93));
    DFN1 \count[13]  (.D(count_n13), .CLK(clock_c), .Q(\counter_c[13] )
        );
    OUTBUF \counter_pad[4]  (.D(\counter_c[4] ), .PAD(counter[4]));
    OR2A count_n13_0_o2 (.A(\counter_c[12] ), .B(N_38), .Y(N_40));
    NOR3C count_n10_0_m4_0_a2_3 (.A(\counter_c[8] ), .B(\counter_c[9] )
        , .C(\counter_c[7] ), .Y(count_n10_0_m4_0_a2_3_net_1));
    DFN1 \count[2]  (.D(N_23), .CLK(clock_c), .Q(\counter_c[2] ));
    XA1C count_n12_0 (.A(\counter_c[12] ), .B(N_38), .C(reset_c), .Y(
        count_n12));
    NOR2B count_n8_i_m3_0_a2_2 (.A(\counter_c[7] ), .B(\counter_c[6] ), 
        .Y(count_n9_0_m4_e_1));
    OR2B count_n4_i_o2_s (.A(\counter_c[0] ), .B(\counter_c[3] ), .Y(
        count_n4_i_o2_out));
    XA1B count_n10_0_m6 (.A(count_n10_0_N_11_mux), .B(\counter_c[10] ), 
        .C(reset_c), .Y(count_n10));
    GND GND_i (.Y(GND));
    DFN1 \count[9]  (.D(count_n9), .CLK(clock_c), .Q(\counter_c[9] ));
    INBUF reset_pad (.PAD(reset), .Y(reset_c));
    NOR3A count_n3_i (.A(N_30), .B(N_92), .C(reset_c), .Y(N_21));
    NOR3C count_n11_0_o2_m6_0_a2_4 (.A(\counter_c[9] ), .B(
        \counter_c[10] ), .C(\counter_c[3] ), .Y(
        count_n11_0_o2_m6_0_a2_4_net_1));
    NOR3A count_n2_i (.A(N_29), .B(N_93), .C(reset_c), .Y(N_23));
    XA1C count_n13_0 (.A(\counter_c[13] ), .B(N_40), .C(reset_c), .Y(
        count_n13));
    NOR3B count_n8_i_m3_0_a2 (.A(count_n8_i_m3_0_a2_3_net_1), .B(
        count_n9_0_m4_e_1), .C(N_28), .Y(count_n8_i_N_9_mux));
    NOR3C count_n8_i_m3_0_a2_3 (.A(\counter_c[5] ), .B(\counter_c[2] ), 
        .C(count_n8_i_m3_0_a2_1), .Y(count_n8_i_m3_0_a2_3_net_1));
    OR3C count_n15_0_o2_s (.A(\counter_c[13] ), .B(\counter_c[12] ), 
        .C(\counter_c[14] ), .Y(count_n15_0_o2_out));
    OR2 count_n4_i_o2 (.A(count_n3_i_o2_out), .B(count_n4_i_o2_out), 
        .Y(N_30));
    OA1C count_n6_i_a2 (.A(\counter_c[5] ), .B(N_31), .C(
        \counter_c[6] ), .Y(N_89));
    DFN1 \count[6]  (.D(N_15), .CLK(clock_c), .Q(\counter_c[6] ));
    NOR2B count_n9_0_m4_e_3 (.A(\counter_c[3] ), .B(count_n9_0_m4_e_0), 
        .Y(count_n9_0_m4_e_3_net_1));
    OUTBUF \counter_pad[7]  (.D(\counter_c[7] ), .PAD(counter[7]));
    OUTBUF \counter_pad[6]  (.D(\counter_c[6] ), .PAD(counter[6]));
    OR2A count_n5_i_o2 (.A(\counter_c[4] ), .B(N_30), .Y(N_31));
    OUTBUF \counter_pad[12]  (.D(\counter_c[12] ), .PAD(counter[12]));
    DFN1 \count[3]  (.D(N_21), .CLK(clock_c), .Q(\counter_c[3] ));
    XA1C count_n4_i (.A(\counter_c[4] ), .B(N_30), .C(reset_c), .Y(
        N_19));
    OUTBUF \counter_pad[10]  (.D(\counter_c[10] ), .PAD(counter[10]));
    NOR3A count_n6_i (.A(N_33), .B(N_89), .C(reset_c), .Y(N_15));
    NOR2A count_n3_i_a2 (.A(N_29), .B(\counter_c[3] ), .Y(N_92));
    NOR2B count_n11_0_o2_m6_0_a2 (.A(count_n11_0_o2_m6_0_a2_7_net_1), 
        .B(count_n11_0_o2_m6_0_a2_6_net_1), .Y(count_n11_0_o2_N_13_mux)
        );
    XA1C count_n7_i (.A(\counter_c[7] ), .B(N_33), .C(reset_c), .Y(
        N_13));
    OUTBUF \counter_pad[0]  (.D(\counter_c[0] ), .PAD(counter[0]));
    CLKBUF clock_pad (.PAD(clock), .Y(clock_c));
    OUTBUF \counter_pad[13]  (.D(\counter_c[13] ), .PAD(counter[13]));
    OUTBUF \counter_pad[3]  (.D(\counter_c[3] ), .PAD(counter[3]));
    OUTBUF \counter_pad[2]  (.D(\counter_c[2] ), .PAD(counter[2]));
    DFN1 \count[4]  (.D(N_19), .CLK(clock_c), .Q(\counter_c[4] ));
    OR2A count_n3_i_o2 (.A(\counter_c[0] ), .B(count_n3_i_o2_out), .Y(
        N_29));
    DFN1 \count[12]  (.D(count_n12), .CLK(clock_c), .Q(\counter_c[12] )
        );
    NOR3C count_n10_0_m4_0_a2_4 (.A(\counter_c[5] ), .B(\counter_c[6] )
        , .C(count_n8_i_m3_0_a2_1), .Y(count_n10_0_m4_0_a2_4_net_1));
    DFN1 \count[7]  (.D(N_13), .CLK(clock_c), .Q(\counter_c[7] ));
    OR2B count_n3_i_o2_s (.A(\counter_c[1] ), .B(\counter_c[2] ), .Y(
        count_n3_i_o2_out));
    
endmodule
