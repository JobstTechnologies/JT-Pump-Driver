# JT Pump Driver

Program to control [evaluation kits](https://www.jobst-technologies.com/products/microfluidics/peristaltic-micropumps/#Evaluation_Kits) for [CPP1 micropumps](https://www.jobst-technologies.com/products/microfluidics/peristaltic-micropumps).

# Usage

To run pumps:
- Connect the pump driver to the PC.
- Click on the menu *Connection* and select the COM port of the pump driver.
- Set the properties you like and press *Run Pumps*.

To update or upload a new firmware:
- Connect the pump driver to the PC.
- Use the menu *Miscellaneous → Firmware Update*.
- Follow the steps provided by the software.

You can get the latest firmware version as binary from [here](https://github.com/JobstTechnologies/JT-PumpDriver-Firmware/releases/latest).

# Copyrights

Copyright by Jobst Technologies.

This project uses the Arduino tool [**bossac**](https://github.com/arduino/arduino-flash-tools).

# Compilation

- Install the [**Lazarus** IDE](https://www.lazarus-ide.org/).
- Only for the first run of Lazarus:
  - Open the menu *Package → Online Package Manager* and install there the packages **LazSerial** and **Synapse**.
- Open the file *JTPumpDriver3.lpi* in Lazarus.
- Build the Lazarus project or run it.
