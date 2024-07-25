
---

# Morse Code Communicator using BASYS 3 FPGA

This project implements a Morse code communication system on the BASYS 3 FPGA development board. Morse code, historically used in telecommunication, encodes characters as sequences of dots and dashes (or "dits" and "dahs"). The BASYS 3 FPGA is leveraged to encode and decode text messages into Morse code signals and vice versa, enabling communication through light emitting diodes (LEDs) and speakers.

## Project Structure

The project consists of three main modules implemented in VHDL:

1. **Input Module**: Responsible for accepting user input (text messages) and converting them into Morse code signals.
   
2. **Decoder Module**: Converts received Morse code signals back into text messages, allowing for bidirectional communication.

3. **Top Module**: Orchestrates the communication between the Input and Decoder modules, interfaces with the BASYS 3 FPGA peripherals (LEDs, switches, push buttons, and speaker), and manages overall system behavior.

## Features:
- **Morse Code Generation**: Convert text input into Morse code signals.
- **Signal Output**: Display Morse code signals using LEDs.
- **User Interface**: Simple interface for entering text messages and viewing Morse code outputs.
- **Real-Time Conversion**: Immediate conversion of text to Morse code and vice versa.

## Components:
- **BASYS 3 FPGA**: Xilinx FPGA board used for logic implementation.
- **VHDL Implementation**: Hardware Description Language used to define the system's behavior.
- **Push Buttons and Switches**: Interface for user input and control.
- **LEDs**: Display Morse code signals visually.
- **Speaker**: Output audio signals corresponding to Morse code.

## Usage:
1. **Input Text**: Enter text messages using the provided interface.
2. **Convert to Morse Code**: Automatically convert the entered text into Morse code.
3. **Output**: LEDs will display the Morse code signals.
4. **Decode Morse Code**: Optionally, decode received Morse code signals back into text.

## Repository Structure:
- `README.md`: Overview, setup instructions, and usage details (you're reading it!).
- `src/`: VHDL source files for the FPGA implementation.
  - `input_module.vhd`: VHDL file for the Input Module.
  - `decoder.v`: VHDL file for the Decoder Module.
  - `top_module.vhd`: VHDL file for the Top Module.
- `constraints/`: Pin assignment constraints for BASYS 3.
- `docs/`: Documentation including project report, circuit diagrams, and detailed explanations.
- `extras/`: Additional resources, such as test files and simulation scripts.

## Getting Started:
To begin using the Morse Code Communicator on BASYS 3 FPGA:
- Clone the repository to your local machine.
- Follow the setup instructions in `README.md` and `docs/` for programming the BASYS 3 board and configuring the FPGA.
- Experiment with text input, Morse code generation, and signal output.

## Contributing:
Contributions to enhance functionality, improve documentation, or optimize code are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

