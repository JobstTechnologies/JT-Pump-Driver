# JT Pump Driver

Program to control a pump driver for CPP1 micropumps: https://www.jobst-technologies.com/products/microfluidics/

# Usage

To run pumps:
- Connect the pump driver to the PC.
- Click on the menu *Connection* and select the COM port of the pump driver.
- Set the properties you like and press *Run Pumps*.

To update or upload a new firmware:
- Connect the pump driver to the PC.
- Use the menu *Miscellaneous → Firmware Update*.
- Follow the steps provided by the software.

You can get the latest firmware version as binary from here: https://github.com/JobstTechnologies/JT-PumpDriver-Firmware/releases

# Copyrights

Copyright by Jobst Technologies.

This project uses the Arduino tool **bossac**: https://github.com/arduino/arduino-flash-tools

# Compilation

- Install the **Lazarus** IDE: https://www.lazarus-ide.org/.
- Only for the first run of Lazarus:
  _ Open the menu *Package → Online package Manager* and install there the packages **LazSerial** and **Synapse**.
- Open the file *JTPumpDriver2.lpi* in Lazarus.
- Build the Lazarus project or run it.
