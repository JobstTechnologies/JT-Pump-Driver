# JT Pump Driver

Program to control [evaluation kits](https://www.jobst-technologies.com/products/microfluidics/peristaltic-micropumps/#Evaluation_Kits) for [CPP1 micropumps](https://www.jobst-technologies.com/products/microfluidics/peristaltic-micropumps).

# Usage

To run pumps:
- Connect the pump driver to the PC.
- Click on the button *Connect Driver* and select the COM port of the pump driver.
- Either
  - set the properties you like.
  - load an action file via the menu *File → Load Action File* or by dropping a file into
   the program while the tab *Action Control* is open.
- Press *Run Action*.

To save a pump action:
- Only necessary when you have a pump action file loaded:
  - Click the button *Generate Command* to unlock its settings.
- Set the parameters in the different steps and then use the menu
  *File → Save Action File*.

## Pump driver Firmware Update

To update or upload a new firmware:
- Connect the pump driver to the PC.
- Use the menu *Miscellaneous → Firmware Update*.
- Follow the steps provided by the software.

You can get the latest firmware version as binary from [here](https://github.com/JobstTechnologies/JT-PumpDriver-Firmware/releases/latest).

# Copyrights

Copyright by Jobst Technologies.

JT Pump Driver uses the Arduino tool [**bossac**](https://github.com/arduino/arduino-flash-tools).

# Compilation

- Install the [**Lazarus** IDE](https://www.lazarus-ide.org/).
- Only for the first run of Lazarus:
  - Open the menu *Package → Online Package Manager* and install there the packages **LazSerial** and **Synapse**.
- Open the file *JTPumpDriver3.lpi* in Lazarus.
- Build the Lazarus project or run it.
