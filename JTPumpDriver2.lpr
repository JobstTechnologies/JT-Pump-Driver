program JTPumpDriver2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, LazSerialPort, JTPumpDriverMain2, SerialUSBSelection, PumpNameSetting;

{$R *.res}

begin
  RequireDerivedFormResource:= True;
  Application.Title:= 'JT Pump Driver';
  Application.Scaled:= True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSerialUSBSelectionF, SerialUSBSelectionF);
  Application.CreateForm(TPumpNameSettingF, PumpNameSettingF);
  Application.Run;
end.

