# SmartFusion2 Security Evaluation Kit RISC-V Designs
Sample Mi-V Libero projects for the SmartFusion2 (M2S090) Security Evaluation Kit.

This repository contains Libero project(s) containing an FPGA design including a RISC-V soft processor. 
The Programming bit-stream(s) are also included so that you do not need to run through the full FPGA design flow 
in order to start developing software for RISC-V.

### Modify The FPGA Design 
The Modify_The_FPGA_Design folder contains Libero example designs. Libero is Microsemi's FPGA design tool. 
You will need this tool if you wish to modify the example FPGA designs. Libero is available from [here](https://www.microsemi.com/products/fpga-soc/design-resources/design-software/libero-soc#downloads).
   
### Programming The Target Device
The Programming_The_Target_Device folder includes FlashPro Express projects that can be used to program the 
development boards FPGA. A standalone installer for FlashPro Express is available [here](http://www.microsemi.com/products/fpga-soc/design-resources/programming/flashpro#software). 
Please note that you only need to install this standalone version of FlashPro Express if you do not have Libero tools installed.

A programming file resulting from the corresponding Libero design in "Modify_The_FPGA_Design" folder is available in "Programming The Target Device" for easy access.

### Example Software Projects
A set of RISC-V example software projects are also available for these designs from the SoftConsole [page](https://github.com/RISCV-on-Microsemi-FPGA/SoftConsole).

### Target Hardware
Details of the features of SmartFusion2 (M2S090) Security Evaluation Kit are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/smartfusion2/sf2-evaluation-kit).

### Target Mi-V CPU
Details of the features of Mi-V CPUs are available [here](https://github.com/RISCV-on-Microsemi-FPGA/CPUs).