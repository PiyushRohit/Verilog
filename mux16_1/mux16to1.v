<<<<<<< HEAD
module mux16to1(in,sel,out);
  input[15:0]in;
  input[3:0] sel;
  output out;
  wire[3:0] t;

  mux4to1 m0(in[3:0],sel[1:0],t[0]);
  mux4to1 m1(in[7:4],sel[1:0],t[1]);
  mux4to1 m2(in[11:8],sel[1:0],t[2]);
  mux4to1 m3(in[15:12],sel[1:0],t[3]);
  mux4to1 m4(t,sel[3:2],out);
 endmodule

=======
module mux16to1(in,sel,out);
  input[15:0]in;
  input[3:0] sel;
  output out;
  wire[3:0] t;

  mux4to1 m0(in[3:0],sel[1:0],t[0]);
  mux4to1 m1(in[7:4],sel[1:0],t[1]);
  mux4to1 m2(in[11:8],sel[1:0],t[2]);
  mux4to1 m3(in[15:12],sel[1:0],t[3]);
  mux4to1 m4(t,sel[3:2],out);
 endmodule

>>>>>>> d5771bfc649faa2ad63436b77cef34935263306d
