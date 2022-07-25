module DFF (D0,D1,D2,D3,T[0:7],Y,S1,S)
input S,S1,D1;
output Y;
wire D0,D2,D3;
wire T[0:7];

and (T[0],D1,S)
not (T[1],S)
and (T[2],T[1],D0)
or (T[3],T[0],T[2])
buf BUF1 (T[3],D0)
buf BUF2 (D0,D2)
not (S1,S)
and (T[4],D2,S1)
not (T[5],S1)
and (T[6],T[5],D3)
or (T[7],T[6],T[4])
buf BUF3 (T[7],D3)

endmodule 