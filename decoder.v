 module decoder (
  input clk,
  input rst,
  input [7:0] morse_array,
  output reg [7:0] decoded_char
);

reg [7:0] current_char;
reg let;

always @(posedge clk or posedge rst) 
 begin
  if (rst)
   begin
    current_char <= 8'b0;
    decoded_char <= 8'b0;
    end 
  else
    if (morse_array != 8'b0) 
     begin
      current_char <= morse_array;
      case (current_char)
        8'b00000110: decoded_char <= 7'b0001000; // 'A'
        8'b10010101: decoded_char <= 7'b1100000; // 'B'
        8'b10011001: decoded_char <= 7'b0110001; // 'C'
        8'b00100101: decoded_char <= 7'b1000010; // 'D'
        8'b00000001: decoded_char <= 7'b0110000; // 'E'
        8'b01011001: decoded_char <= 7'b0111000; // 'F'
        8'b00101001: decoded_char <= 7'b0100001; // 'G'
        8'b01010101: decoded_char <= 7'b1001000; // 'H'
        8'b00000101: decoded_char <= 7'b1111001; // 'I'
        8'b01101010: decoded_char <= 7'b1000011; // 'J'
      //  8'b00100110: decoded_char <= 7'b; // 'K'
        8'b01100101: decoded_char <= 7'b1110001; // 'L'
      //  8'b00001010: decoded_char <= 7'b; // 'M'
        8'b00001001: decoded_char <= 7'b1101010; // 'N'
        8'b00101010: decoded_char <= 7'b0000001; // 'O'
        8'b01101001: decoded_char <= 7'b0011000; // 'P'
        8'b10100101: decoded_char <= 7'b0001100; // 'Q'
        8'b00011001: decoded_char <= 7'b1111010; // 'R'
        8'b00010101: decoded_char <= 7'b0100100; // 'S'
        8'b00000010: decoded_char <= 7'b1110000; // 'T'
        8'b00010110: decoded_char <= 7'b1000001; // 'U'
    //   8'b01010110: decoded_char <= 7'b010101; // 'V'       // the cases which are in indentation are the ones which cannont be displayed on 7-segment LED display
    //   8'b00011010: decoded_char <= 7'b01010110; // 'W'
    //   8'b10010110: decoded_char <= 7'b01010111; // 'X'
        8'b10011010: decoded_char <= 7'b1000100; // 'Y'
     //   8'b10100101: decoded_char <= 7'b01011001; // 'Z'
//        8'b: decoded_char <= 8'b00110000; // '0'
//        8'b: decoded_char <= 8'b00110001; // '1'
//        8'b: decoded_char <= 8'b00110010; // '2'
//        8'b: decoded_char <= 8'b00110011; // '3'
//        8'b: decoded_char <= 8'b00110100; // '4'
//        8'b: decoded_char <= 8'b00110101; // '5'
//        8'b: decoded_char <= 8'b00110110; // '6'
//        8'b: decoded_char <= 8'b00110111; // '7'
//        8'b: decoded_char <= 8'b00111000; // '8'
//        8'b: decoded_char <= 8'b00111001; // '9'
        default: decoded_char <= 8'b11111111; // Error, unknown character
        endcase
        
       end
      end  
endmodule
