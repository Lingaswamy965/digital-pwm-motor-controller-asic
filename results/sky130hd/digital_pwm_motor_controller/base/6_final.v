module digital_pwm_motor_controller (clk,
    enable,
    pwm_out,
    reset,
    duty_cycle);
 input clk;
 input enable;
 output pwm_out;
 input reset;
 input [7:0] duty_cycle;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire \counter[0] ;
 wire \counter[1] ;
 wire \counter[2] ;
 wire \counter[3] ;
 wire \counter[4] ;
 wire \counter[5] ;
 wire \counter[6] ;
 wire \counter[7] ;
 wire net11;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_1 _059_ (.A(net10),
    .Y(_034_));
 sky130_fd_sc_hd__inv_1 _060_ (.A(\counter[0] ),
    .Y(_011_));
 sky130_fd_sc_hd__inv_1 _061_ (.A(net2),
    .Y(_013_));
 sky130_fd_sc_hd__inv_1 _062_ (.A(net3),
    .Y(_016_));
 sky130_fd_sc_hd__inv_1 _063_ (.A(net4),
    .Y(_019_));
 sky130_fd_sc_hd__inv_1 _064_ (.A(net5),
    .Y(_022_));
 sky130_fd_sc_hd__inv_1 _065_ (.A(net6),
    .Y(_025_));
 sky130_fd_sc_hd__inv_1 _066_ (.A(net7),
    .Y(_028_));
 sky130_fd_sc_hd__inv_1 _067_ (.A(net8),
    .Y(_031_));
 sky130_fd_sc_hd__nand2b_1 _068_ (.A_N(_032_),
    .B(net9),
    .Y(_035_));
 sky130_fd_sc_hd__nand2_1 _069_ (.A(_033_),
    .B(_030_),
    .Y(_036_));
 sky130_fd_sc_hd__a21oi_1 _070_ (.A1(_027_),
    .A2(_023_),
    .B1(_026_),
    .Y(_037_));
 sky130_fd_sc_hd__nor2_1 _071_ (.A(_036_),
    .B(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__nor2b_1 _072_ (.A(_012_),
    .B_N(_015_),
    .Y(_039_));
 sky130_fd_sc_hd__o211ai_1 _073_ (.A1(_014_),
    .A2(_039_),
    .B1(_021_),
    .C1(_018_),
    .Y(_040_));
 sky130_fd_sc_hd__a21oi_1 _074_ (.A1(_021_),
    .A2(_017_),
    .B1(_020_),
    .Y(_041_));
 sky130_fd_sc_hd__nand4_1 _075_ (.A(_033_),
    .B(_027_),
    .C(_030_),
    .D(_024_),
    .Y(_042_));
 sky130_fd_sc_hd__a21oi_1 _076_ (.A1(_040_),
    .A2(_041_),
    .B1(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__a2111oi_2 _077_ (.A1(_033_),
    .A2(_029_),
    .B1(_035_),
    .C1(_038_),
    .D1(_043_),
    .Y(_008_));
 sky130_fd_sc_hd__and2b_1 _078_ (.A_N(\counter[0] ),
    .B(net9),
    .X(_000_));
 sky130_fd_sc_hd__and2_1 _079_ (.A(net9),
    .B(_010_),
    .X(_001_));
 sky130_fd_sc_hd__xor2_1 _080_ (.A(\counter[2] ),
    .B(_009_),
    .X(_044_));
 sky130_fd_sc_hd__and2_1 _081_ (.A(net9),
    .B(_044_),
    .X(_002_));
 sky130_fd_sc_hd__nand3_1 _082_ (.A(\counter[0] ),
    .B(\counter[2] ),
    .C(\counter[1] ),
    .Y(_045_));
 sky130_fd_sc_hd__xnor2_1 _083_ (.A(\counter[3] ),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__and2_1 _084_ (.A(net9),
    .B(_046_),
    .X(_003_));
 sky130_fd_sc_hd__nand3_1 _085_ (.A(\counter[2] ),
    .B(_009_),
    .C(\counter[3] ),
    .Y(_047_));
 sky130_fd_sc_hd__xnor2_1 _086_ (.A(\counter[4] ),
    .B(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__and2_1 _087_ (.A(net9),
    .B(_048_),
    .X(_004_));
 sky130_fd_sc_hd__and2_1 _088_ (.A(\counter[2] ),
    .B(\counter[3] ),
    .X(_049_));
 sky130_fd_sc_hd__and3_1 _089_ (.A(\counter[0] ),
    .B(\counter[4] ),
    .C(\counter[1] ),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _090_ (.A(_049_),
    .B(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__xnor2_1 _091_ (.A(\counter[5] ),
    .B(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__and2_1 _092_ (.A(net9),
    .B(_052_),
    .X(_005_));
 sky130_fd_sc_hd__nand2_1 _093_ (.A(\counter[4] ),
    .B(\counter[5] ),
    .Y(_053_));
 sky130_fd_sc_hd__nor2_1 _094_ (.A(_047_),
    .B(_053_),
    .Y(_054_));
 sky130_fd_sc_hd__xnor2_1 _095_ (.A(\counter[6] ),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__nor2b_1 _096_ (.A(_055_),
    .B_N(net9),
    .Y(_006_));
 sky130_fd_sc_hd__nand4_1 _097_ (.A(\counter[5] ),
    .B(\counter[6] ),
    .C(_049_),
    .D(_050_),
    .Y(_056_));
 sky130_fd_sc_hd__xnor2_1 _098_ (.A(\counter[7] ),
    .B(_056_),
    .Y(_057_));
 sky130_fd_sc_hd__and2_1 _099_ (.A(net9),
    .B(_057_),
    .X(_007_));
 sky130_fd_sc_hd__ha_1 _100_ (.A(\counter[0] ),
    .B(\counter[1] ),
    .COUT(_009_),
    .SUM(_010_));
 sky130_fd_sc_hd__ha_1 _101_ (.A(net1),
    .B(_011_),
    .COUT(_012_),
    .SUM(_058_));
 sky130_fd_sc_hd__ha_1 _102_ (.A(_013_),
    .B(\counter[1] ),
    .COUT(_014_),
    .SUM(_015_));
 sky130_fd_sc_hd__ha_1 _103_ (.A(_016_),
    .B(\counter[2] ),
    .COUT(_017_),
    .SUM(_018_));
 sky130_fd_sc_hd__ha_1 _104_ (.A(_019_),
    .B(\counter[3] ),
    .COUT(_020_),
    .SUM(_021_));
 sky130_fd_sc_hd__ha_1 _105_ (.A(_022_),
    .B(\counter[4] ),
    .COUT(_023_),
    .SUM(_024_));
 sky130_fd_sc_hd__ha_1 _106_ (.A(_025_),
    .B(\counter[5] ),
    .COUT(_026_),
    .SUM(_027_));
 sky130_fd_sc_hd__ha_1 _107_ (.A(_028_),
    .B(\counter[6] ),
    .COUT(_029_),
    .SUM(_030_));
 sky130_fd_sc_hd__ha_1 _108_ (.A(_031_),
    .B(\counter[7] ),
    .COUT(_032_),
    .SUM(_033_));
 sky130_fd_sc_hd__dfrtp_1 \counter[0]$_DFF_PP0_  (.D(_000_),
    .Q(\counter[0] ),
    .RESET_B(_034_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[1]$_DFF_PP0_  (.D(_001_),
    .Q(\counter[1] ),
    .RESET_B(_034_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[2]$_DFF_PP0_  (.D(_002_),
    .Q(\counter[2] ),
    .RESET_B(_034_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[3]$_DFF_PP0_  (.D(_003_),
    .Q(\counter[3] ),
    .RESET_B(_034_),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[4]$_DFF_PP0_  (.D(_004_),
    .Q(\counter[4] ),
    .RESET_B(_034_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[5]$_DFF_PP0_  (.D(_005_),
    .Q(\counter[5] ),
    .RESET_B(_034_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[6]$_DFF_PP0_  (.D(_006_),
    .Q(\counter[6] ),
    .RESET_B(_034_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \counter[7]$_DFF_PP0_  (.D(_007_),
    .Q(\counter[7] ),
    .RESET_B(_034_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfrtp_1 \pwm_out$_DFF_PP0_  (.D(_008_),
    .Q(net11),
    .RESET_B(_034_),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input1 (.A(duty_cycle[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input2 (.A(duty_cycle[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input3 (.A(duty_cycle[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input4 (.A(duty_cycle[3]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input5 (.A(duty_cycle[4]),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input6 (.A(duty_cycle[5]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input7 (.A(duty_cycle[6]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input8 (.A(duty_cycle[7]),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input9 (.A(enable),
    .X(net9));
 sky130_fd_sc_hd__clkdlybuf4s50_1 input10 (.A(reset),
    .X(net10));
 sky130_fd_sc_hd__clkdlybuf4s50_1 output11 (.A(net11),
    .X(pwm_out));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload0 (.A(clknet_1_0__leaf_clk));
endmodule
