module dff_negedge(D,Clock,Q,Qbar);
  input  D,Clock;
  output reg Q,Qbar;
  always @(negedge Clock)
  begin
    Q=D;
    Qbar=~D;
  end


endmodule