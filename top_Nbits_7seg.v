module top_Nbits_7seg#(parameter N = 10)(

	//entredas
	input [N-1:0] Num_b,
	
	//salidas para el segmentos
	output [0:6] seg_out1, seg_out2, seg_out3, seg_out4

);

//señal auxiliar que va conectada del FA3B aldecoder de 7 segmentos
wire [3:0] uni, dec,r_cen, cen, r_mil, mil;

assign mil = Num_b / 1000;
assign r_mil = Num_b % 1000;
assign cen = r_mil / 100;
assign r_cen =  r_mil % 100;
assign dec = r_cen / 10;
assign uni = r_cen % 10;


decoder_7_seg display_u(
	.decoder_in(uni),
	.decoder_out(seg_out1)
	);
	
decoder_7_seg display_d(
	.decoder_in(dec),
	.decoder_out(seg_out2)
	);
	
decoder_7_seg display_c(
	.decoder_in(cen),
	.decoder_out(seg_out3)
	);
	
decoder_7_seg display_m(
	.decoder_in(mil),
	.decoder_out(seg_out4)
	);
	



endmodule
