module decoder_tb;

  reg clk;
  reg rst;
  reg [7:0] morse_array;
  wire [7:0] decoded_char;

  // DUT instance
  decoder DUT (
    .clk(clk),
    .rst(rst),
    .morse_array(morse_array),
    .decoded_char(decoded_char)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  // Test sequence
  initial begin
    rst = 1;
    #10 rst = 0;

    // Test different current_char values
    morse_array = 8'b00000110; // 'A'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'A'", morse_array, decoded_char);

    morse_array = 8'b10010101; // 'B'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'B'", morse_array, decoded_char);

    morse_array = 8'b00000001; // 'E'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'E'", morse_array, decoded_char);

    morse_array = 8'b01010101; // 'H'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'H'", morse_array, decoded_char);

    morse_array = 8'b11111111; // Unknown character
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'Error'", morse_array, decoded_char);

    morse_array = 8'b01101101; // 'S'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'S'", morse_array, decoded_char);

    morse_array = 8'b01101001; // 'T'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'T'", morse_array, decoded_char);

    morse_array = 8'b01101110; // 'U'
    #20;
    $display("Current char: %b, Decoded char: %b, Letter: 'U'", morse_array, decoded_char);

    #100 $finish;
  end

endmodule