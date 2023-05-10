module helloworldfpga(

    input  wire W,
    input  wire X,
    input  wire Y,
    input  wire Z,
    input  wire R,
    input  wire S,
    output wire A,
    output wire B
    );
   // assign X=0;
    //assign Y=0;
    //assign Z=0;
    always @(*)
    begin
    A=(!R&&!S&&W)||(!R&&S&&X)||(R&&!S&&Y)||(R&&S&&Z);
    B=(!R&&S)||(R&&!S);
    end
    endmodule
