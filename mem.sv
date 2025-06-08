
module mem (
   input  logic clk,
	input  logic read,
	input  logic write, 
	input  logic [4:0] addr  ,
	input  logic [7:0] data_in  ,
   output logic [7:0] data_out
	   );

timeunit 1ns;
timeprecision 1ns;


logic [7:0] memory [0:31] ;
  
  always_ff @(posedge clk)begin
    if (write && !read) begin
      #1 memory[addr] <= data_in;
		end
		end

  always_ff @(posedge clk)begin
  if ((read == '1)&&(write == '0)) begin
  data_out <= memory[addr];
  end
  end
		

endmodule
