`timescale 1ns/1ps
`default_nettype none
`include "hdl/register.sv"

module fir(clk, rst, ena, sample, out);

    input wire clk, rst, ena;
    input wire [15:0] sample;
    output logic [38:0] out;


    ////// TAP COEFFICIENTS //////
    logic signed [15:0] tap0, tap1, tap2, tap3, tap4, tap5, tap6, tap7, tap8, tap9, tap10, tap11, tap12, tap13, tap14, tap15, tap16, tap17, tap18, tap19, tap20, tap21, tap22, tap23, tap24, tap25, tap26, tap27, tap28, tap29, tap30, tap31, tap32, tap33, tap34, tap35, tap36, tap37, tap38, tap39, tap40, tap41, tap42, tap43, tap44, tap45, tap46, tap47, tap48, tap49, tap50, tap51, tap52, tap53, tap54, tap55, tap56, tap57, tap58, tap59, tap60, tap61, tap62, tap63, tap64, tap65, tap66, tap67, tap68, tap69, tap70, tap71, tap72, tap73;
    always_comb tap0 = -16'sd9;
    always_comb tap1 = -16'sd5;
    always_comb tap2 = 16'sd7;
    always_comb tap3 = 16'sd27;
    always_comb tap4 = 16'sd45;
    always_comb tap5 = 16'sd47;
    always_comb tap6 = 16'sd22;
    always_comb tap7 = -16'sd28;
    always_comb tap8 = -16'sd91;
    always_comb tap9 = -16'sd137;
    always_comb tap10 = -16'sd133;
    always_comb tap11 = -16'sd60;
    always_comb tap12 = 16'sd71;
    always_comb tap13 = 16'sd219;
    always_comb tap14 = 16'sd316;
    always_comb tap15 = 16'sd297;
    always_comb tap16 = 16'sd131;
    always_comb tap17 = -16'sd150;
    always_comb tap18 = -16'sd452;
    always_comb tap19 = -16'sd639;
    always_comb tap20 = -16'sd589;
    always_comb tap21 = -16'sd256;
    always_comb tap22 = 16'sd292;
    always_comb tap23 = 16'sd870;
    always_comb tap24 = 16'sd1224;
    always_comb tap25 = 16'sd1130;
    always_comb tap26 = 16'sd494;
    always_comb tap27 = -16'sd568;
    always_comb tap28 = -16'sd1724;
    always_comb tap29 = -16'sd2492;
    always_comb tap30 = -16'sd2391;
    always_comb tap31 = -16'sd1105;
    always_comb tap32 = 16'sd1377;
    always_comb tap33 = 16'sd4707;
    always_comb tap34 = 16'sd8241;
    always_comb tap35 = 16'sd11197;
    always_comb tap36 = 16'sd12881;
    always_comb tap37 = 16'sd12881;
    always_comb tap38 = 16'sd11197;
    always_comb tap39 = 16'sd8241;
    always_comb tap40 = 16'sd4707;
    always_comb tap41 = 16'sd1377;
    always_comb tap42 = -16'sd1105;
    always_comb tap43 = -16'sd2391;
    always_comb tap44 = -16'sd2492;
    always_comb tap45 = -16'sd1724;
    always_comb tap46 = -16'sd568;
    always_comb tap47 = 16'sd494;
    always_comb tap48 = 16'sd1130;
    always_comb tap49 = 16'sd1224;
    always_comb tap50 = 16'sd870;
    always_comb tap51 = 16'sd292;
    always_comb tap52 = -16'sd256;
    always_comb tap53 = -16'sd589;
    always_comb tap54 = -16'sd639;
    always_comb tap55 = -16'sd452;
    always_comb tap56 = -16'sd150;
    always_comb tap57 = 16'sd131;
    always_comb tap58 = 16'sd297;
    always_comb tap59 = 16'sd316;
    always_comb tap60 = 16'sd219;
    always_comb tap61 = 16'sd71;
    always_comb tap62 = -16'sd60;
    always_comb tap63 = -16'sd133;
    always_comb tap64 = -16'sd137;
    always_comb tap65 = -16'sd91;
    always_comb tap66 = -16'sd28;
    always_comb tap67 = 16'sd22;
    always_comb tap68 = 16'sd47;
    always_comb tap69 = 16'sd45;
    always_comb tap70 = 16'sd27;
    always_comb tap71 = 16'sd7;
    always_comb tap72 = -16'sd5;
    always_comb tap73 = -16'sd9;


    ////// SAMPLE SHIFT REGISTER //////
    logic signed [15:0] buf0, buf1, buf2, buf3, buf4, buf5, buf6, buf7, buf8, buf9, buf10, buf11, buf12, buf13, buf14, buf15, buf16, buf17, buf18, buf19, buf20, buf21, buf22, buf23, buf24, buf25, buf26, buf27, buf28, buf29, buf30, buf31, buf32, buf33, buf34, buf35, buf36, buf37, buf38, buf39, buf40, buf41, buf42, buf43, buf44, buf45, buf46, buf47, buf48, buf49, buf50, buf51, buf52, buf53, buf54, buf55, buf56, buf57, buf58, buf59, buf60, buf61, buf62, buf63, buf64, buf65, buf66, buf67, buf68, buf69, buf70, buf71, buf72, buf73;
    register #(.N(16)) buffer0(.clk(clk), .ena(ena), .rst(rst), .d(sample), .q(buf0));
    register #(.N(16)) buffer1(.clk(clk), .ena(ena), .rst(rst), .d(buf0), .q(buf1));
    register #(.N(16)) buffer2(.clk(clk), .ena(ena), .rst(rst), .d(buf1), .q(buf2));
    register #(.N(16)) buffer3(.clk(clk), .ena(ena), .rst(rst), .d(buf2), .q(buf3));
    register #(.N(16)) buffer4(.clk(clk), .ena(ena), .rst(rst), .d(buf3), .q(buf4));
    register #(.N(16)) buffer5(.clk(clk), .ena(ena), .rst(rst), .d(buf4), .q(buf5));
    register #(.N(16)) buffer6(.clk(clk), .ena(ena), .rst(rst), .d(buf5), .q(buf6));
    register #(.N(16)) buffer7(.clk(clk), .ena(ena), .rst(rst), .d(buf6), .q(buf7));
    register #(.N(16)) buffer8(.clk(clk), .ena(ena), .rst(rst), .d(buf7), .q(buf8));
    register #(.N(16)) buffer9(.clk(clk), .ena(ena), .rst(rst), .d(buf8), .q(buf9));
    register #(.N(16)) buffer10(.clk(clk), .ena(ena), .rst(rst), .d(buf9), .q(buf10));
    register #(.N(16)) buffer11(.clk(clk), .ena(ena), .rst(rst), .d(buf10), .q(buf11));
    register #(.N(16)) buffer12(.clk(clk), .ena(ena), .rst(rst), .d(buf11), .q(buf12));
    register #(.N(16)) buffer13(.clk(clk), .ena(ena), .rst(rst), .d(buf12), .q(buf13));
    register #(.N(16)) buffer14(.clk(clk), .ena(ena), .rst(rst), .d(buf13), .q(buf14));
    register #(.N(16)) buffer15(.clk(clk), .ena(ena), .rst(rst), .d(buf14), .q(buf15));
    register #(.N(16)) buffer16(.clk(clk), .ena(ena), .rst(rst), .d(buf15), .q(buf16));
    register #(.N(16)) buffer17(.clk(clk), .ena(ena), .rst(rst), .d(buf16), .q(buf17));
    register #(.N(16)) buffer18(.clk(clk), .ena(ena), .rst(rst), .d(buf17), .q(buf18));
    register #(.N(16)) buffer19(.clk(clk), .ena(ena), .rst(rst), .d(buf18), .q(buf19));
    register #(.N(16)) buffer20(.clk(clk), .ena(ena), .rst(rst), .d(buf19), .q(buf20));
    register #(.N(16)) buffer21(.clk(clk), .ena(ena), .rst(rst), .d(buf20), .q(buf21));
    register #(.N(16)) buffer22(.clk(clk), .ena(ena), .rst(rst), .d(buf21), .q(buf22));
    register #(.N(16)) buffer23(.clk(clk), .ena(ena), .rst(rst), .d(buf22), .q(buf23));
    register #(.N(16)) buffer24(.clk(clk), .ena(ena), .rst(rst), .d(buf23), .q(buf24));
    register #(.N(16)) buffer25(.clk(clk), .ena(ena), .rst(rst), .d(buf24), .q(buf25));
    register #(.N(16)) buffer26(.clk(clk), .ena(ena), .rst(rst), .d(buf25), .q(buf26));
    register #(.N(16)) buffer27(.clk(clk), .ena(ena), .rst(rst), .d(buf26), .q(buf27));
    register #(.N(16)) buffer28(.clk(clk), .ena(ena), .rst(rst), .d(buf27), .q(buf28));
    register #(.N(16)) buffer29(.clk(clk), .ena(ena), .rst(rst), .d(buf28), .q(buf29));
    register #(.N(16)) buffer30(.clk(clk), .ena(ena), .rst(rst), .d(buf29), .q(buf30));
    register #(.N(16)) buffer31(.clk(clk), .ena(ena), .rst(rst), .d(buf30), .q(buf31));
    register #(.N(16)) buffer32(.clk(clk), .ena(ena), .rst(rst), .d(buf31), .q(buf32));
    register #(.N(16)) buffer33(.clk(clk), .ena(ena), .rst(rst), .d(buf32), .q(buf33));
    register #(.N(16)) buffer34(.clk(clk), .ena(ena), .rst(rst), .d(buf33), .q(buf34));
    register #(.N(16)) buffer35(.clk(clk), .ena(ena), .rst(rst), .d(buf34), .q(buf35));
    register #(.N(16)) buffer36(.clk(clk), .ena(ena), .rst(rst), .d(buf35), .q(buf36));
    register #(.N(16)) buffer37(.clk(clk), .ena(ena), .rst(rst), .d(buf36), .q(buf37));
    register #(.N(16)) buffer38(.clk(clk), .ena(ena), .rst(rst), .d(buf37), .q(buf38));
    register #(.N(16)) buffer39(.clk(clk), .ena(ena), .rst(rst), .d(buf38), .q(buf39));
    register #(.N(16)) buffer40(.clk(clk), .ena(ena), .rst(rst), .d(buf39), .q(buf40));
    register #(.N(16)) buffer41(.clk(clk), .ena(ena), .rst(rst), .d(buf40), .q(buf41));
    register #(.N(16)) buffer42(.clk(clk), .ena(ena), .rst(rst), .d(buf41), .q(buf42));
    register #(.N(16)) buffer43(.clk(clk), .ena(ena), .rst(rst), .d(buf42), .q(buf43));
    register #(.N(16)) buffer44(.clk(clk), .ena(ena), .rst(rst), .d(buf43), .q(buf44));
    register #(.N(16)) buffer45(.clk(clk), .ena(ena), .rst(rst), .d(buf44), .q(buf45));
    register #(.N(16)) buffer46(.clk(clk), .ena(ena), .rst(rst), .d(buf45), .q(buf46));
    register #(.N(16)) buffer47(.clk(clk), .ena(ena), .rst(rst), .d(buf46), .q(buf47));
    register #(.N(16)) buffer48(.clk(clk), .ena(ena), .rst(rst), .d(buf47), .q(buf48));
    register #(.N(16)) buffer49(.clk(clk), .ena(ena), .rst(rst), .d(buf48), .q(buf49));
    register #(.N(16)) buffer50(.clk(clk), .ena(ena), .rst(rst), .d(buf49), .q(buf50));
    register #(.N(16)) buffer51(.clk(clk), .ena(ena), .rst(rst), .d(buf50), .q(buf51));
    register #(.N(16)) buffer52(.clk(clk), .ena(ena), .rst(rst), .d(buf51), .q(buf52));
    register #(.N(16)) buffer53(.clk(clk), .ena(ena), .rst(rst), .d(buf52), .q(buf53));
    register #(.N(16)) buffer54(.clk(clk), .ena(ena), .rst(rst), .d(buf53), .q(buf54));
    register #(.N(16)) buffer55(.clk(clk), .ena(ena), .rst(rst), .d(buf54), .q(buf55));
    register #(.N(16)) buffer56(.clk(clk), .ena(ena), .rst(rst), .d(buf55), .q(buf56));
    register #(.N(16)) buffer57(.clk(clk), .ena(ena), .rst(rst), .d(buf56), .q(buf57));
    register #(.N(16)) buffer58(.clk(clk), .ena(ena), .rst(rst), .d(buf57), .q(buf58));
    register #(.N(16)) buffer59(.clk(clk), .ena(ena), .rst(rst), .d(buf58), .q(buf59));
    register #(.N(16)) buffer60(.clk(clk), .ena(ena), .rst(rst), .d(buf59), .q(buf60));
    register #(.N(16)) buffer61(.clk(clk), .ena(ena), .rst(rst), .d(buf60), .q(buf61));
    register #(.N(16)) buffer62(.clk(clk), .ena(ena), .rst(rst), .d(buf61), .q(buf62));
    register #(.N(16)) buffer63(.clk(clk), .ena(ena), .rst(rst), .d(buf62), .q(buf63));
    register #(.N(16)) buffer64(.clk(clk), .ena(ena), .rst(rst), .d(buf63), .q(buf64));
    register #(.N(16)) buffer65(.clk(clk), .ena(ena), .rst(rst), .d(buf64), .q(buf65));
    register #(.N(16)) buffer66(.clk(clk), .ena(ena), .rst(rst), .d(buf65), .q(buf66));
    register #(.N(16)) buffer67(.clk(clk), .ena(ena), .rst(rst), .d(buf66), .q(buf67));
    register #(.N(16)) buffer68(.clk(clk), .ena(ena), .rst(rst), .d(buf67), .q(buf68));
    register #(.N(16)) buffer69(.clk(clk), .ena(ena), .rst(rst), .d(buf68), .q(buf69));
    register #(.N(16)) buffer70(.clk(clk), .ena(ena), .rst(rst), .d(buf69), .q(buf70));
    register #(.N(16)) buffer71(.clk(clk), .ena(ena), .rst(rst), .d(buf70), .q(buf71));
    register #(.N(16)) buffer72(.clk(clk), .ena(ena), .rst(rst), .d(buf71), .q(buf72));
    register #(.N(16)) buffer73(.clk(clk), .ena(ena), .rst(rst), .d(buf72), .q(buf73));


    ////// LINEAR COMBINATION SAMPLES WITH TAPS //////
    logic signed [31:0] multiplied0, multiplied1, multiplied2, multiplied3, multiplied4, multiplied5, multiplied6, multiplied7, multiplied8, multiplied9, multiplied10, multiplied11, multiplied12, multiplied13, multiplied14, multiplied15, multiplied16, multiplied17, multiplied18, multiplied19, multiplied20, multiplied21, multiplied22, multiplied23, multiplied24, multiplied25, multiplied26, multiplied27, multiplied28, multiplied29, multiplied30, multiplied31, multiplied32, multiplied33, multiplied34, multiplied35, multiplied36, multiplied37, multiplied38, multiplied39, multiplied40, multiplied41, multiplied42, multiplied43, multiplied44, multiplied45, multiplied46, multiplied47, multiplied48, multiplied49, multiplied50, multiplied51, multiplied52, multiplied53, multiplied54, multiplied55, multiplied56, multiplied57, multiplied58, multiplied59, multiplied60, multiplied61, multiplied62, multiplied63, multiplied64, multiplied65, multiplied66, multiplied67, multiplied68, multiplied69, multiplied70, multiplied71, multiplied72, multiplied73;
    always_comb multiplied0 = buf0 * tap0;
    always_comb multiplied1 = buf1 * tap1;
    always_comb multiplied2 = buf2 * tap2;
    always_comb multiplied3 = buf3 * tap3;
    always_comb multiplied4 = buf4 * tap4;
    always_comb multiplied5 = buf5 * tap5;
    always_comb multiplied6 = buf6 * tap6;
    always_comb multiplied7 = buf7 * tap7;
    always_comb multiplied8 = buf8 * tap8;
    always_comb multiplied9 = buf9 * tap9;
    always_comb multiplied10 = buf10 * tap10;
    always_comb multiplied11 = buf11 * tap11;
    always_comb multiplied12 = buf12 * tap12;
    always_comb multiplied13 = buf13 * tap13;
    always_comb multiplied14 = buf14 * tap14;
    always_comb multiplied15 = buf15 * tap15;
    always_comb multiplied16 = buf16 * tap16;
    always_comb multiplied17 = buf17 * tap17;
    always_comb multiplied18 = buf18 * tap18;
    always_comb multiplied19 = buf19 * tap19;
    always_comb multiplied20 = buf20 * tap20;
    always_comb multiplied21 = buf21 * tap21;
    always_comb multiplied22 = buf22 * tap22;
    always_comb multiplied23 = buf23 * tap23;
    always_comb multiplied24 = buf24 * tap24;
    always_comb multiplied25 = buf25 * tap25;
    always_comb multiplied26 = buf26 * tap26;
    always_comb multiplied27 = buf27 * tap27;
    always_comb multiplied28 = buf28 * tap28;
    always_comb multiplied29 = buf29 * tap29;
    always_comb multiplied30 = buf30 * tap30;
    always_comb multiplied31 = buf31 * tap31;
    always_comb multiplied32 = buf32 * tap32;
    always_comb multiplied33 = buf33 * tap33;
    always_comb multiplied34 = buf34 * tap34;
    always_comb multiplied35 = buf35 * tap35;
    always_comb multiplied36 = buf36 * tap36;
    always_comb multiplied37 = buf37 * tap37;
    always_comb multiplied38 = buf38 * tap38;
    always_comb multiplied39 = buf39 * tap39;
    always_comb multiplied40 = buf40 * tap40;
    always_comb multiplied41 = buf41 * tap41;
    always_comb multiplied42 = buf42 * tap42;
    always_comb multiplied43 = buf43 * tap43;
    always_comb multiplied44 = buf44 * tap44;
    always_comb multiplied45 = buf45 * tap45;
    always_comb multiplied46 = buf46 * tap46;
    always_comb multiplied47 = buf47 * tap47;
    always_comb multiplied48 = buf48 * tap48;
    always_comb multiplied49 = buf49 * tap49;
    always_comb multiplied50 = buf50 * tap50;
    always_comb multiplied51 = buf51 * tap51;
    always_comb multiplied52 = buf52 * tap52;
    always_comb multiplied53 = buf53 * tap53;
    always_comb multiplied54 = buf54 * tap54;
    always_comb multiplied55 = buf55 * tap55;
    always_comb multiplied56 = buf56 * tap56;
    always_comb multiplied57 = buf57 * tap57;
    always_comb multiplied58 = buf58 * tap58;
    always_comb multiplied59 = buf59 * tap59;
    always_comb multiplied60 = buf60 * tap60;
    always_comb multiplied61 = buf61 * tap61;
    always_comb multiplied62 = buf62 * tap62;
    always_comb multiplied63 = buf63 * tap63;
    always_comb multiplied64 = buf64 * tap64;
    always_comb multiplied65 = buf65 * tap65;
    always_comb multiplied66 = buf66 * tap66;
    always_comb multiplied67 = buf67 * tap67;
    always_comb multiplied68 = buf68 * tap68;
    always_comb multiplied69 = buf69 * tap69;
    always_comb multiplied70 = buf70 * tap70;
    always_comb multiplied71 = buf71 * tap71;
    always_comb multiplied72 = buf72 * tap72;
    always_comb multiplied73 = buf73 * tap73;

    always_comb out = multiplied0 + multiplied1 + multiplied2 + multiplied3 + multiplied4 + multiplied5 + multiplied6 + multiplied7 + multiplied8 + multiplied9 + multiplied10 + multiplied11 + multiplied12 + multiplied13 + multiplied14 + multiplied15 + multiplied16 + multiplied17 + multiplied18 + multiplied19 + multiplied20 + multiplied21 + multiplied22 + multiplied23 + multiplied24 + multiplied25 + multiplied26 + multiplied27 + multiplied28 + multiplied29 + multiplied30 + multiplied31 + multiplied32 + multiplied33 + multiplied34 + multiplied35 + multiplied36 + multiplied37 + multiplied38 + multiplied39 + multiplied40 + multiplied41 + multiplied42 + multiplied43 + multiplied44 + multiplied45 + multiplied46 + multiplied47 + multiplied48 + multiplied49 + multiplied50 + multiplied51 + multiplied52 + multiplied53 + multiplied54 + multiplied55 + multiplied56 + multiplied57 + multiplied58 + multiplied59 + multiplied60 + multiplied61 + multiplied62 + multiplied63 + multiplied64 + multiplied65 + multiplied66 + multiplied67 + multiplied68 + multiplied69 + multiplied70 + multiplied71 + multiplied72 + multiplied73;

endmodule