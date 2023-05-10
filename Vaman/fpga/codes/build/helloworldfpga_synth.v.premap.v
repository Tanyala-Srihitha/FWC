/* Generated by Yosys 0.9+2406 (git sha1 ca763e6d5, gcc 10.2.1-6 -fPIC -Os) */

(* top =  1  *)
(* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:1.1-20.14" *)
module helloworldfpga(W, X, Y, Z, R, S, A, B);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:9.17-9.18" *)
  output A;
  wire A_LUT3_O_I0;
  wire A_LUT3_O_I2;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:10.17-10.18" *)
  output B;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:7.17-7.18" *)
  input R;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:8.17-8.18" *)
  input S;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:3.17-3.18" *)
  input W;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:4.17-4.18" *)
  input X;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:5.17-5.18" *)
  input Y;
  (* src = "/data/data/com.termux/files/home/fpga/codes/helloworldfpga.v:6.17-6.18" *)
  input Z;
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X24Y3"),
    .IO_PAD("59"),
    .IO_TYPE("BIDIR")
  ) _08_ (
    .A(_00_),
    .P(A)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X26Y3"),
    .IO_PAD("57"),
    .IO_TYPE("BIDIR")
  ) _09_ (
    .A(_01_),
    .P(B)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X16Y3"),
    .IO_PAD("62"),
    .IO_TYPE("BIDIR")
  ) _10_ (
    .P(R),
    .Q(_02_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X18Y3"),
    .IO_PAD("63"),
    .IO_TYPE("BIDIR")
  ) _11_ (
    .P(S),
    .Q(_03_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X8Y3"),
    .IO_PAD("6"),
    .IO_TYPE("BIDIR")
  ) _12_ (
    .P(W),
    .Q(_04_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X10Y3"),
    .IO_PAD("2"),
    .IO_TYPE("BIDIR")
  ) _13_ (
    .P(X),
    .Q(_05_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X12Y3"),
    .IO_PAD("3"),
    .IO_TYPE("BIDIR")
  ) _14_ (
    .P(Y),
    .Q(_06_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC("X14Y3"),
    .IO_PAD("64"),
    .IO_TYPE("BIDIR")
  ) _15_ (
    .P(Z),
    .Q(_07_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)+(I0*~I1*~I2)+(I0*I1*~I2)+(I0*~I1*I2)"),
    .INIT(9'h057)
  ) A_LUT3_O (
    .I0(A_LUT3_O_I0),
    .I1(_02_),
    .I2(A_LUT3_O_I2),
    .O(_00_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:32.63-32.110" *)
  LUT2 #(
    .EQN("(I0*~I1)+(~I0*I1)"),
    .INIT(4'h6)
  ) B_LUT2_O (
    .I0(_02_),
    .I1(_03_),
    .O(_01_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)+(I0*~I1*~I2)+(~I0*~I1*I2)"),
    .INIT(9'h027)
  ) X_LUT3_I1 (
    .I0(_03_),
    .I1(_05_),
    .I2(_04_),
    .O(A_LUT3_O_I2)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/bin/../share/yosys/quicklogic/pp3_lut_map.v:40.63-40.132" *)
  LUT4 #(
    .EQN("(~I0*~I1*~I2*~I3)+(I0*~I1*~I2*~I3)+(~I0*I1*~I2*~I3)+(I0*I1*~I2*~I3)+(~I0*~I1*I2*~I3)+(I0*~I1*I2*~I3)+(~I0*I1*I2*~I3)+(~I0*~I1*~I2*I3)+(~I0*I1*~I2*I3)+(I0*I1*~I2*I3)+(~I0*~I1*I2*I3)+(~I0*I1*I2*I3)"),
    .INIT(16'h5d7f)
  ) Z_LUT4_I2 (
    .I0(_02_),
    .I1(_03_),
    .I2(_07_),
    .I3(_06_),
    .O(A_LUT3_O_I0)
  );
endmodule
