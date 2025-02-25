module BCD_tb #(parameter N = 10, ITERACIONES = 10)();

reg [N-1 : 0] Numb_r;
wire [0:6] dis_u, dis_d, dis_c, dis_m;

BCD DUT(
.Num_b(Numb_r),
.seg_out1(dis_u),
.seg_out2(dis_d),
.seg_out3(dis_c),
.seg_out4(dis_m)
);

task set_input();
	Numb_r = $urandom_range(2**N - 1);
	$display("valor a probar = %d", Numb_r);
	#10;
endtask

integer i;

initial
begin
	for(i=0;i < ITERACIONES;i=i+1)
	begin
		set_input();
	end
end




endmodule