program JTPumpDriver3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, LazSerialPort, JTPumpDriverMain3, SerialUSBSelection, PumpNameSetting,
  AboutForm;

{$R *.res}

begin
  RequireDerivedFormResource:= True;
  Application.Title:='JT Pump Driver';
  Application.Scaled:= True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSerialUSBSelectionF, SerialUSBSelectionF);
  Application.CreateForm(TPumpNameSettingF, PumpNameSettingF);
  Application.CreateForm(TAboutFormF, AboutFormF);
  Application.Run;
end.

