unit JTPumpDriverMain2;

{$mode objfpc}{$H+}{$R+}{$Q+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Menus, Math,
  StdCtrls, ExtCtrls, Spin, EditBtn, Buttons, LCLType, Registry, Process,
  {Serial,} SynaSer, LazSerial, Crt, SerialUSBSelection, StrUtils,
  PopupNotifier;

type

  { TMainForm }

  TMainForm = class(TForm)
    DutyCycle1FSE: TFloatSpinEdit;
    ActionTime2GB: TGroupBox;
    DutyCycle3FSE: TFloatSpinEdit;
    DutyCycle4FSE: TFloatSpinEdit;
    DutyCycle5FSE: TFloatSpinEdit;
    DutyCycle6FSE: TFloatSpinEdit;
    DutyCycle2GB: TGroupBox;
    ActionTime3GB: TGroupBox;
    ActionTime4GB: TGroupBox;
    ActionTime5GB: TGroupBox;
    ActionTime6GB: TGroupBox;
    COMConnect: TLazSerial;
    DutyCycle2FSE: TFloatSpinEdit;
    DutyCycle1GB: TGroupBox;
    DutyCycle3GB: TGroupBox;
    DutyCycle4GB: TGroupBox;
    DutyCycle5GB: TGroupBox;
    DutyCycle6GB: TGroupBox;
    GenerateCommandBB: TBitBtn;
    ActionsGB: TGroupBox;
    CommandL: TLabel;
    CommandM: TMemo;
    ActionTime1GB: TGroupBox;
    FirmwareUpdateMenu: TMenuItem;
    AboutMenu: TMenuItem;
    FirmwareFileDialog: TOpenDialog;
    FirmwareNote: TPopupNotifier;
    Label1: TLabel;
    Label2: TLabel;
    GetFirmwareVersionMenu: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    StepTimer1: TTimer;
    StepTimer2: TTimer;
    StepTimer3: TTimer;
    StepTimer4: TTimer;
    StepTimer5: TTimer;
    StepTimer6: TTimer;
    StopTimer: TTimer;
    StartTimeLE: TLabeledEdit;
    FinishTimeLE: TLabeledEdit;
    TotalTimeLE: TLabeledEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    RunTime2FSE: TFloatSpinEdit;
    RunTime3FSE: TFloatSpinEdit;
    RunTime4FSE: TFloatSpinEdit;
    RunTime5FSE: TFloatSpinEdit;
    RunTime6FSE: TFloatSpinEdit;
    TimeEdit1: TTimeEdit;
    Unit2RBh: TRadioButton;
    Unit3RBh: TRadioButton;
    Unit4RBh: TRadioButton;
    Unit5RBh: TRadioButton;
    Unit6RBh: TRadioButton;
    Unit2RBmin: TRadioButton;
    Unit1RBs: TRadioButton;
    Unit1RBmin: TRadioButton;
    Unit1RBh: TRadioButton;
    RunSettingsGB: TGroupBox;
    StatusGB: TGroupBox;
    IndicatorPanelP: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Pump1DirectionRG1: TRadioGroup;
    Pump1DirectionRG2: TRadioGroup;
    Pump1DirectionRG3: TRadioGroup;
    Pump1DirectionRG4: TRadioGroup;
    Pump1DirectionRG5: TRadioGroup;
    Pump1DirectionRG6: TRadioGroup;
    Pump1GB1: TGroupBox;
    Pump1GB2: TGroupBox;
    Pump1GB3: TGroupBox;
    Pump1GB4: TGroupBox;
    Pump1GB5: TGroupBox;
    Pump1GB6: TGroupBox;
    Pump1OnOffCB1: TCheckBox;
    Pump1OnOffCB2: TCheckBox;
    Pump1OnOffCB3: TCheckBox;
    Pump1OnOffCB4: TCheckBox;
    Pump1OnOffCB5: TCheckBox;
    Pump1OnOffCB6: TCheckBox;
    Pump1VoltageFS1: TFloatSpinEdit;
    Pump1VoltageFS2: TFloatSpinEdit;
    Pump1VoltageFS3: TFloatSpinEdit;
    Pump1VoltageFS4: TFloatSpinEdit;
    Pump1VoltageFS5: TFloatSpinEdit;
    Pump1VoltageFS6: TFloatSpinEdit;
    Pump2DirectionRG1: TRadioGroup;
    Pump2DirectionRG2: TRadioGroup;
    Pump2DirectionRG3: TRadioGroup;
    Pump2DirectionRG4: TRadioGroup;
    Pump2DirectionRG5: TRadioGroup;
    Pump2DirectionRG6: TRadioGroup;
    Pump2GB1: TGroupBox;
    Pump2GB2: TGroupBox;
    Pump2GB3: TGroupBox;
    Pump2GB4: TGroupBox;
    Pump2GB5: TGroupBox;
    Pump2GB6: TGroupBox;
    Pump2OnOffCB1: TCheckBox;
    Pump2OnOffCB2: TCheckBox;
    Pump2OnOffCB3: TCheckBox;
    Pump2OnOffCB4: TCheckBox;
    Pump2OnOffCB5: TCheckBox;
    Pump2OnOffCB6: TCheckBox;
    Pump2VoltageFS1: TFloatSpinEdit;
    Pump2VoltageFS2: TFloatSpinEdit;
    Pump2VoltageFS3: TFloatSpinEdit;
    Pump2VoltageFS4: TFloatSpinEdit;
    Pump2VoltageFS5: TFloatSpinEdit;
    Pump2VoltageFS6: TFloatSpinEdit;
    Pump3DirectionRG1: TRadioGroup;
    Pump3DirectionRG2: TRadioGroup;
    Pump3DirectionRG3: TRadioGroup;
    Pump3DirectionRG4: TRadioGroup;
    Pump3DirectionRG5: TRadioGroup;
    Pump3DirectionRG6: TRadioGroup;
    Pump3GB1: TGroupBox;
    Pump3GB2: TGroupBox;
    Pump3GB3: TGroupBox;
    Pump3GB4: TGroupBox;
    Pump3GB5: TGroupBox;
    Pump3GB6: TGroupBox;
    Pump3OnOffCB1: TCheckBox;
    Pump3OnOffCB2: TCheckBox;
    Pump3OnOffCB3: TCheckBox;
    Pump3OnOffCB4: TCheckBox;
    Pump3OnOffCB5: TCheckBox;
    Pump3OnOffCB6: TCheckBox;
    Pump3VoltageFS1: TFloatSpinEdit;
    Pump3VoltageFS2: TFloatSpinEdit;
    Pump3VoltageFS3: TFloatSpinEdit;
    Pump3VoltageFS4: TFloatSpinEdit;
    Pump3VoltageFS5: TFloatSpinEdit;
    Pump3VoltageFS6: TFloatSpinEdit;
    Pump4DirectionRG1: TRadioGroup;
    Pump4DirectionRG2: TRadioGroup;
    Pump4DirectionRG3: TRadioGroup;
    Pump4DirectionRG4: TRadioGroup;
    Pump4DirectionRG5: TRadioGroup;
    Pump4DirectionRG6: TRadioGroup;
    Pump4GB1: TGroupBox;
    Pump4GB2: TGroupBox;
    Pump4GB3: TGroupBox;
    Pump4GB4: TGroupBox;
    Pump4GB5: TGroupBox;
    Pump4GB6: TGroupBox;
    Pump4OnOffCB1: TCheckBox;
    Pump4OnOffCB2: TCheckBox;
    Pump4OnOffCB3: TCheckBox;
    Pump4OnOffCB4: TCheckBox;
    Pump4OnOffCB5: TCheckBox;
    Pump4OnOffCB6: TCheckBox;
    Pump4VoltageFS1: TFloatSpinEdit;
    Pump4VoltageFS2: TFloatSpinEdit;
    Pump4VoltageFS3: TFloatSpinEdit;
    Pump4VoltageFS4: TFloatSpinEdit;
    Pump4VoltageFS5: TFloatSpinEdit;
    Pump4VoltageFS6: TFloatSpinEdit;
    RepeatL: TLabel;
    RepeatOutputLE: TLabeledEdit;
    RepeatPC: TPageControl;
    RepeatSE: TSpinEdit;
    RunBB: TBitBtn;
    RunEndlessCB: TCheckBox;
    RunFreeBB: TBitBtn;
    RunTime1FSE: TFloatSpinEdit;
    Step1TS: TTabSheet;
    Step2TS: TTabSheet;
    Step2UseCB: TCheckBox;
    Step3TS: TTabSheet;
    Step3UseCB: TCheckBox;
    Step4TS: TTabSheet;
    Step4UseCB: TCheckBox;
    Step5TS: TTabSheet;
    Step5UseCB: TCheckBox;
    Step6TS: TTabSheet;
    Step6UseCB: TCheckBox;
    StopBB: TBitBtn;
    ConnectionMenu: TMenuItem;
    MiscMenu: TMenuItem;
    ConnComPortLE: TLabeledEdit;
    MainMenu: TMainMenu;
    OverallTimer: TTimer;
    RepeatTimer: TTimer;
    Unit3RBmin: TRadioButton;
    Unit4RBmin: TRadioButton;
    Unit5RBmin: TRadioButton;
    Unit6RBmin: TRadioButton;
    Unit2RBs: TRadioButton;
    Unit3RBs: TRadioButton;
    Unit4RBs: TRadioButton;
    Unit5RBs: TRadioButton;
    Unit6RBs: TRadioButton;
    procedure AboutMenuClick(Sender: TObject);
    procedure ConnectionMenuClick(Sender: TObject);
    procedure DutyCycle1FSEChange(Sender: TObject);
    procedure DutyCycle2FSEChange(Sender: TObject);
    procedure DutyCycle3FSEChange(Sender: TObject);
    procedure DutyCycle4FSEChange(Sender: TObject);
    procedure DutyCycle5FSEChange(Sender: TObject);
    procedure DutyCycle6FSEChange(Sender: TObject);
    procedure FirmwareUpdateMenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GenerateCommandBBClick(Sender: TObject);
    function  GenerateCommand(out time: Double; out command : string) : boolean;
    function  DialogWithPos(const Message: string; DialogType: TMsgDlgType;
               Buttons: TMsgDlgButtons; AX, AY: Integer): TModalResult;
    procedure GetFirmwareVersionMenuClick(Sender: TObject);
    procedure PumpOnOffCBSingleChange(Sender: TObject);
    procedure PumpOnOffCBLoopChange(Sender: TObject);
    procedure RepeatPCChange(Sender: TObject);
    procedure RunBBClick(Sender: TObject);
    procedure RunEndlessCBChange(Sender: TObject);
    procedure RunFreeBBClick(Sender: TObject);
    procedure Step2UseCBChange(Sender: TObject);
    procedure Step3UseCBChange(Sender: TObject);
    procedure Step4UseCBChange(Sender: TObject);
    procedure Step5UseCBChange(Sender: TObject);
    procedure Step6UseCBChange(Sender: TObject);
    procedure StepTimer1Finished(Sender: TObject);
    procedure StepTimer2Finished(Sender: TObject);
    procedure StepTimer3Finished(Sender: TObject);
    procedure StepTimer4Finished(Sender: TObject);
    procedure StepTimer5Finished(Sender: TObject);
    procedure StepTimer6Finished(Sender: TObject);
    procedure StopBBClick(Sender: TObject);
    procedure StopTimerFinished;
    procedure OverallTimerFinished;
    procedure RepeatTimerFinished;
  private

  public

  end;

var
  MainForm : TMainForm;
  Version : string = '2.32';
  FirmwareVersion : string = 'unknown';
  RequiredFirmwareVersion : float = 1.3;
  ser: TBlockSerial;
  CurrentRepeat : integer;
  globalTime : Double = 0;
  globalRepeatTime : Double = 0;
  RepeatTime : Double = 0;
  HaveSerial : Boolean = False;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
 MainForm.Caption:= 'JT Pump Driver ' + Version;
 DefaultFormatSettings.DecimalSeparator:= '.'; // we use English numbers
end;

procedure TMainForm.ConnectionMenuClick(Sender: TObject);
// opens the connection settings dialog and opens a connections according
// to the dialog input
var
  command : string;
  Reg : TRegistry;
  i : integer;
  MousePointer : TPoint;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 // enable all menus because they would be disabled when formerly
 // connected to an unknown device
 GetFirmwareVersionMenu.Enabled:= true;
 FirmwareUpdateMenu.Enabled:= true;
 // determine all possible COM ports
 Reg:= TRegistry.Create;
 try
  Reg.RootKey:= HKEY_LOCAL_MACHINE;
  if Reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM') then
  begin
   with SerialUSBSelectionF do
   begin
    SerialUSBPortCB.Items.Clear;
    SerialUSBPortCB.Sorted:= false;
    Reg.GetValueNames(SerialUSBPortCB.Items);
    for i:= 0 to SerialUSBPortCB.Items.Count - 1 do
     SerialUSBPortCB.Items[i]:= Reg.ReadString(SerialUSBPortCB.Items[i]);
    SerialUSBPortCB.Sorted:= true;
   end;
  end;
 finally
  Reg.Free;
 end;
 // open connection dialog
 SerialUSBSelectionF.ShowModal;
 if (COMPort = 'Ignore') then // user pressed Disconnect
 begin
  ConnComPortLE.Text:= 'Not connected';
  ConnComPortLE.Color:= clHighlight;
  IndicatorPanelP.Caption:= '';
  IndicatorPanelP.Color:= clDefault;
  // disable all buttons
  RunBB.Enabled:= false;
  StopBB.Enabled:= false;
  RunFreeBB.Enabled:= false;
  if HaveSerial then
  begin
   // stop pumps
   command:= '/0I0000lR' + #13#10;
   ser.SendString(command);
   ser.CloseSocket;
   ser.Free;
   HaveSerial:= False;
   IndicatorPanelP.Caption:= 'Pumps stopped';
   IndicatorPanelP.Color:= clHighlight;
  end;
  exit;
 end;
 if (COMPort = '') then // user forgot to set a COM port
 begin
  MessageDlgPos('Error: No COM port selected.',
   mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
  // disable all buttons
  RunBB.Enabled:= false;
  StopBB.Enabled:= false;
  RunFreeBB.Enabled:= false;
  IndicatorPanelP.Caption:= 'Connection failiure';
  IndicatorPanelP.Color:= clRed;
  if HaveSerial then
  begin
   // stop pumps
   command:= '/0I0000lR' + #13#10;
   ser.SendString(command);
   ser.CloseSocket;
   ser.Free;
   HaveSerial:= False;
   IndicatorPanelP.Caption:= 'Pumps stopped';
   IndicatorPanelP.Color:= clHighlight;
  end;
  exit;
 end;
 try
  if HaveSerial then
  begin
   ser.CloseSocket;
   ser.Free;
   HaveSerial:= False;
  end;
  ConnComPortLE.Text:= 'Not connected';
  ConnComPortLE.Color:= clHighlight;
  ser:= TBlockSerial.Create;
  HaveSerial:= True;
  ser.DeadlockTimeout:= 3000; //set timeout to 3 s
  ser.config(9600, 8, 'N', SB1, False, False);
  ser.Connect(COMPort);
  if ser.LastError <> 0 then
  begin
   // disable all buttons
   RunBB.Enabled:= false;
   StopBB.Enabled:= false;
   RunFreeBB.Enabled:= false;
   IndicatorPanelP.Caption:= 'Connection failiure';
   IndicatorPanelP.Color:= clRed;
   exit;
  end;
  // blink 5 times
  command:= '/0gLM500lM500G4R' + #13#10;
  ser.SendString(command);
 finally
  if ser.LastError <> 0 then
  begin
   MessageDlgPos(COMPort + ' error: ' + ser.LastErrorDesc,
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   ConnComPortLE.Color:= clRed;
   // disable all buttons
   RunBB.Enabled:= false;
   StopBB.Enabled:= false;
   RunFreeBB.Enabled:= false;
   if ser.LastError = 9997 then
    exit; // we cannot close socket or free when the connection timed out
   ser.CloseSocket;
   ser.Free;
   HaveSerial:= False;
   exit;
  end;
  // output connected port
  ConnComPortLE.Text:= SerialUSBSelectionF.SerialUSBPortCB.Text;
  ConnComPortLE.Color:= clDefault;
  IndicatorPanelP.Caption:= 'Connection successful';
  IndicatorPanelP.Color:= clDefault;
  // get Firmware version
  try
   FirmwareVersion:= ser.RecvPacket(1000);
  finally
   if ser.LastError <> 0 then
   begin
    MessageDlgPos(COMPort + ' error on reading firmware version: '
     + ser.LastErrorDesc, mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    ConnComPortLE.Color:= clRed;
    IndicatorPanelP.Caption:= 'Wrong device';
    IndicatorPanelP.Color:= clRed;
    GetFirmwareVersionMenu.Enabled:= false;
    FirmwareUpdateMenu.Enabled:= false;
    // disable all buttons
    RunBB.Enabled:= false;
    StopBB.Enabled:= false;
    RunFreeBB.Enabled:= false;
    if ser.LastError = 9997 then
     exit; // we cannot close socket or free when the connection timed out
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exit;
   end
   else
   begin
    // FirmwareVersion has now this format:
    // "JT-PumpDriver-Firmware x.y\n Received command: ..."
    // but on old versions the firmware does not have any number,
    // only "received command" is sent back
    // therefore check for a number dot
    if Pos('.', FirmwareVersion) > 0 then
     FirmwareVersion:= copy(FirmwareVersion, Pos('.', FirmwareVersion) - 1, 3)
    // omit the 'r' because some versions used a capital letter 'R'
    else if Pos('eceived command:', FirmwareVersion) > 0 then
     FirmwareVersion:= 'unknown'
    else
    begin
     MessageDlgPos('Not connected to a supported pump driver.',
      mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
     exit;
    end;
    // JT Pump Driver requires a certain firmware version
    if FirmwareVersion = 'unknown' then
    begin
     MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
      + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
      + #13#10 + 'You have an unknown old firmware version installed.'
      + #13#10 + 'Please use the menu Miscellaneous -> Firmware Update.',
      mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
     exit;
    end
    else if StrToFloat(FirmwareVersion) < RequiredFirmwareVersion then
    begin
     MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
      + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
      + #13#10 + 'You have firmware version ' + FirmwareVersion + ' installed.'
      + #13#10 + 'Please use the menu Miscellaneous -> Firmware Update.',
      mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
     exit;
    end;
    // enable all buttons
    RunBB.Enabled:= true;
    StopBB.Enabled:= true;
    RunFreeBB.Enabled:= true;
   end;
  end; //end inner finally
 end; //end outer finally
end;

procedure TMainForm.FirmwareUpdateMenuClick(Sender: TObject);
// flashes the program cache in the TinyZero controller with a new firmware
var
 COMListStart, COMListBoot : TStringList;
 Reg : TRegistry;
 BootCOM, BossacOut, FirmwareFile, bossacPath, command : string;
 i : integer;
 MousePointer : TPoint;
 exited : Boolean = false;
begin
 { the flushing works the following way:
 1. Closing the connection
 2. Reopening the connection bit with 1200 baud.
 This sets the controller to boot mode and gives the controller a new COM
  port number, therefore
 3. Wait util the new COM port is available
 4. Execute the bossac.exe to send the firmware
 This will chane the COM port again.
 5. Reconnect to the new COM port with normal baud rate   }

 MousePointer:= Mouse.CursorPos; // store mouse position

 // at first check if the bossac.exe is in the same folder than the executable
 // get path to the boaasc.exe which is the same as the application
 bossacPath:= ExtractFileDir(Application.ExeName);
 bossacPath:= bossacPath + '\bossac.exe';
 if not FileExists(bossacPath) then
 begin
  MessageDlgPos('The file "bossac.exe" is not in the same folder as this program.'
   + #13#10 + 'No firmware update possible.',
   mtError, [mbOK], 0 , MousePointer.X, MousePointer.Y);
  exit;
 end;

 // basic info
 MessageDlgPos('Specify now the COM port of the pump driver' + #13#10
  + 'and select then the firmware file.',
  mtInformation, [mbOK], 0, MousePointer.X, MousePointer.Y);

 // disable all buttons
 RunBB.Enabled:= false;
 StopBB.Enabled:= false;
 RunFreeBB.Enabled:= false;
 ConnComPortLE.Text:= 'Not connected';
 ConnComPortLE.Color:= clHighlight;
 IndicatorPanelP.Caption:= '';
 IndicatorPanelP.Color:= clDefault;

 try // to free finally the TStringLists
  // determine all possible COM ports
  COMListStart:= TStringList.Create;
  COMListBoot:= TStringList.Create;
  Reg:= TRegistry.Create;
  try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM') then
   begin
    with SerialUSBSelectionF do
    begin
     SerialUSBPortCB.Items.Clear;
     SerialUSBPortCB.Sorted:= false;
     Reg.GetValueNames(SerialUSBPortCB.Items);
     for i:= 0 to SerialUSBPortCB.Items.Count - 1 do
     begin
      SerialUSBPortCB.Items[i]:= Reg.ReadString(SerialUSBPortCB.Items[i]);
      // store the list
      COMListStart.Add(SerialUSBPortCB.Items[i]);
     end;
     SerialUSBPortCB.Sorted:= true;
    end;
   end;
  finally
   Reg.Free;
  end;

  // open connection dialog
  SerialUSBSelectionF.ShowModal;
  if (COMPort = 'Ignore') then // user pressed Disconnect
  begin
   MessageDlgPos('No connection, no firmware update possible.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;
  if (COMPort = '') then // user forgot to set a COM port
  begin
   MessageDlgPos('Error: No COM port selected, no firmware update possible.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;
  // check if we are connected to a pump driver
  try
   // for some odd reason not all pump driver output gets received,
   // therefore establish a new connection
   if HaveSerial then
   begin
    ser.CloseSocket;
    ser.Free;
   end;
   ser:= TBlockSerial.Create;
   HaveSerial:= True;
   ser.DeadlockTimeout:= 10; //set timeout to 10 s
   ser.config(9600, 8, 'N', SB1, False, False);
   ser.Connect(COMPort);
   // send now a simple command to get the firmware version back
   // blink 1 time
   command:= '/0LM500lM500R' + #13#10;
   ser.SendString(command);
   // receive firmware version
   FirmwareVersion:= ser.RecvPacket(1000);
  finally
   if ser.LastError <> 0 then
   begin
    MessageDlgPos(COMPort + ' error: ' + ser.LastErrorDesc,
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    ConnComPortLE.Color:= clRed;
    MessageDlgPos('The selected COM port is not the one of a pump driver!',
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    IndicatorPanelP.Caption:= 'Wrong device';
    IndicatorPanelP.Color:= clRed;
    if ser.LastError = 9997 then
    begin
     exited:= true;
     exit; // we cannot close socket or free when the connection timed out
    end;
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exited:= true;
    exit;
   end;
   // in case of successful data exchange but not a pump driver
   if Pos('eceived command:', FirmwareVersion) = 0 then
   // (omit the 'r' because some versions used a capital letter 'R')
   begin
    MessageDlgPos('The selected COM port is not the one of a pump driver!',
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    IndicatorPanelP.Caption:= 'Wrong device';
    IndicatorPanelP.Color:= clRed;
   end;
  end;

  // if connected to wrong device, the exit only jumps out of try..finally block
  if exited then
   exit;
  // open the firmware binary file
  if FirmwareFileDialog.Execute then
  begin
   FirmwareFile := FirmwareFileDialog.Filename;
   if not FileExists(FirmwareFile) then
   begin
    MessageDlgPos('Selected file does not exist, no firmware update possible.',
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    exit;
   end;
  end
  else
  begin
   MessageDlgPos('No firmware file selected, no firmware update possible.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;

  // Closing open connections
  if HaveSerial then
  begin
   ser.CloseSocket;
   ser.Free;
   HaveSerial:= False;
  end;

  // open new connection with 1200 baud
  // we must use the TLazSerial package for the connection because when
  // using the synaser package closing the connection the TinyZero does
  // not get into boot mode
  try
   COMConnect.Device:= COMPort;
   COMConnect.Open;
  except
   MessageDlgPos('Error: A connection to ' + COMPort + ' cannot be opened.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;
  // since the process will need more than 10 seconds, show a note
  // at the position where the initial info message was output
  FirmwareNote.ShowAtPos(MousePointer.X, MousePointer.Y);
  Application.ProcessMessages; // to show the note before going to delay
  Delay(2000); // some time until the connection is in every case established
  Application.ProcessMessages; // keep the program alive to Windows
  // Close the connection
  try
   COMConnect.Close;
  except
   MessageDlgPos('Error: ' + COMPort + ' cannot be closed.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;
  // now the microcontroller gets to boot mode and establishes two times a
  // connection with Windows. This needs several seconds:
  Application.ProcessMessages;
  Delay(4000);
  Application.ProcessMessages;

  // we need to find out what the new COM port is
  // The number of COM ports have not changed, so we can just read out the
  // current list and compare
  Reg:= TRegistry.Create;
  try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM') then
   begin
    Reg.GetValueNames(COMListBoot);
    for i:= 0 to COMListBoot.Count - 1 do
     COMListBoot[i]:= Reg.ReadString(COMListBoot[i]);
   end;
  finally
   Reg.Free;
  end;
  // compare with prior list
  BootCOM:= 'x';
  for i:= 0 to COMListBoot.Count - 1 do
   if COMListBoot[i] <> COMListStart[i] then
   begin
    BootCOM:= COMListBoot[i];
    break;
   end;
  if BootCOM = 'x' then
   BootCOM:= COMPort;

  // upload the new firmware
  RunCommand(bossacPath,
   ['-i', '-d', '-p' , BootCOM, '-U', 'true', '-e', '-w', '-v', FirmwareFile, '-R'],
   BossacOut, [poNoConsole]);

  Application.ProcessMessages;
  Delay(5000); // wait 5s because the microcontroller needs time
  Application.ProcessMessages;
  FirmwareNote.Hide; // hide the note

  // the COM port might now be different than at the start
  Reg:= TRegistry.Create;
  try
   Reg.RootKey:= HKEY_LOCAL_MACHINE;
   if Reg.OpenKeyReadOnly('HARDWARE\DEVICEMAP\SERIALCOMM') then
   begin
    Reg.GetValueNames(COMListBoot);
    for i:= 0 to COMListBoot.Count - 1 do
     COMListBoot[i]:= Reg.ReadString(COMListBoot[i]);
   end;
  finally
   Reg.Free;
  end;
  // compare with start COM list
  BootCOM:= 'x';
  for i:= 0 to COMListBoot.Count - 1 do
   if COMListBoot[i] <> COMListStart[i] then
   begin
    BootCOM:= COMListBoot[i];
    break;
   end;
  if BootCOM = 'x' then
   BootCOM:= COMPort;

  // reconnect
  try
   ser:= TBlockSerial.Create;
   HaveSerial:= True;
   ser.DeadlockTimeout:= 10; //set timeout to 10 s
   ser.config(9600, 8, 'N', SB1, False, False);
   ser.Connect(BootCOM);
   // send now a simple command to get the firmware version back
   // blink 1 time
   command:= '/0LM500lM500R' + #13#10;
   ser.SendString(command);
   // receive firmware version
   FirmwareVersion:= ser.RecvPacket(1000);
  finally
   if ser.LastError <> 0 then
   begin
    MessageDlgPos(BootCOM + ' error: ' + ser.LastErrorDesc,
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    ConnComPortLE.Color:= clRed;
    if ser.LastError = 9997 then
     exit; // we cannot close socket or free when the connection timed out
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exit;
   end;
   if Pos('.', FirmwareVersion) > 0 then
     FirmwareVersion:= copy(FirmwareVersion, Pos('.', FirmwareVersion) - 1, 3)
   else
     FirmwareVersion:= 'unknown';
   // output connected port
   ConnComPortLE.Color:= clDefault;
   ConnComPortLE.Text:= BootCOM;
   IndicatorPanelP.Caption:= 'Firmware updated';
   // inform the user
   if (AnsiContainsStr(BossacOut, 'Verify successful'))
     and (FirmwareVersion <> 'unknown') then
    MessageDlgPos('The firmware has been updated sucessfully to version '
     + FirmwareVersion + '.', mtInformation, [mbOK], 0, MousePointer.X,
     MousePointer.Y)
   else if FirmwareVersion = 'unknown' then
    begin
     MessageDlgPos('The firmware has been updated sucessfully but to an unknown'
      + #13#10 + 'old version that is not supported by JT Pump Driver '
      + Version + '.' + #13#10 + 'JT Pump Driver ' + Version
      + ' requires firmware version ' + FloatToStr(RequiredFirmwareVersion)
      + ' or newer!' , mtInformation, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
     exit;
    end
   else
   begin
    MessageDlgPos('The firmware could not be updated sucessfully.' + #13#10
     + 'Here is the full output of the failed firmware update attempt:' + #13#10
     + BossacOut, mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    exit;
   end;
   if StrToFloat(FirmwareVersion) < RequiredFirmwareVersion then
   begin
    MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
     + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
     + #13#10 + 'You have firmware version ' + FirmwareVersion + ' installed.'
     + #13#10 + 'Please use the menu Miscellaneous -> Firmware Update.',
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
    exit;
   end;
   // enable all buttons
   RunBB.Enabled:= true;
   StopBB.Enabled:= true;
   RunFreeBB.Enabled:= true;
   IndicatorPanelP.Color:= clDefault;
  end;

 finally
  FreeAndNil(COMListStart);
  FreeAndNil(COMListBoot);
 end;
end;

function TMainForm.DialogWithPos(const Message: string; DialogType: TMsgDlgType;
           Buttons: TMsgDlgButtons; AX, AY: Integer): TModalResult;
// creates a dialog that will appear with its upper left edge
// at the current mouse position
var
  MessageForm: TForm;
begin
 MessageForm:= CreateMessageDialog(Message, DialogType, Buttons);
 try
   MessageForm.FormStyle:= fsStayOnTop;
   MessageForm.Position:= poDefaultSizeOnly;
   MessageForm.Left:= AX;
   MessageForm.Top:= AY;
   Result:= MessageForm.ShowModal;
 finally
   MessageForm.Free
 end;
end;

procedure TMainForm.GetFirmwareVersionMenuClick(Sender: TObject);
// reads the forware version from the board
var
 StringFound : integer;
 MousePointer : TPoint;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 StringFound:= Pos('COM', ConnComPortLE.Text);
 if (StringFound = 0) or (ConnComPortLE.Color = clRed) then // connect first
  ConnectionMenuClick(Sender);
 // check again
 StringFound:= Pos('COM', ConnComPortLE.Text);
 if (StringFound = 0) or (ConnComPortLE.Color = clRed) then // abort
 begin
  MessageDlgPos('Error: No connection to a pump driver',
   mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
  exit;
 end
 else // connected
 begin
  MessageDlgPos('Firmware version: ' + FirmwareVersion,
   mtInformation, [mbOK], 0, MousePointer.X, MousePointer.Y)
 end;
end;

procedure TMainForm.AboutMenuClick(Sender: TObject);
var
 MousePointer : TPoint;
begin
 MousePointer:= Mouse.CursorPos;
 MessageDlgPos('       JT Pump Driver version ' + Version + #13#10
  + 'Program to control a pump driver for CCP1 pumps.' + #13#10
  + 'Usage:' + #13#10
  + '- connect the pump driver to the PC' + #13#10
  + '- click on the menu "Connection" and select the' + #13#10
  + '  COM port of the pump driver' + #13#10
  + '- set the properties you like and press "Run Pumps"',
   mtInformation, [mbOK], 0 ,MousePointer.X, MousePointer.Y);
end;

procedure TMainForm.FormClose(Sender: TObject);
// Close serial connection
var
 command : string;
begin
 // stop the pumps and blink 3 times
 command:= '/0I0000gLM500lM500G2R' + #13#10;
 if HaveSerial then // the user set a COM port
  try
   ser.SendString(command);
   if ser.LastError <> 0 then
   with Application do
    MessageBox(PChar(COMPort + 'error: ' + ser.LastErrorDesc), 'Error', MB_ICONERROR+MB_OK);
  finally
   // close connection
    if (HaveSerial) and (ser.LastError <> 9997) then
    // we cannot close socket or free when the connection timed out
    begin
     ser.CloseSocket;
     ser.free;
     HaveSerial:= False;
    end;
  end;
end;

procedure TMainForm.GenerateCommandBBClick(Sender: TObject);
// call function to collect data an generate command
var
  command : string;
  time : Double;
begin
  GenerateCommand(time, command);
  CommandM.Text:= command;
end;

function TMainForm.GenerateCommand(out time: Double; out command : string): boolean;
// collect data an generate command to be sent
var
  voltage : string;
  SOrder : array [0..3] of char;
  timeFactor, DutyRepeats, XTime, OnTime, OffTime : integer;
  timeCalc, timeOut, timeStep : Double;
  HaveS : Boolean = False;
begin
  timeFactor:= 1; timeCalc:= 0;
  command:= ''; voltage:= '';
  IndicatorPanelP.Color:= clDefault;
  IndicatorPanelP.Caption:= ''; IndicatorPanelP.Hint:= '';

  // address
  command:= '/0';
  // turn on LED
  command:= command + 'L';

   if (StrToInt(RepeatSE.Text) > 0) or (RunEndlessCB.Checked) then
    // begin loop flag
    command:= command + 'g';

   // step 1-------------------------------------------------------------------
   SOrder:= '0000';
   // speed and direction flag
   if (Pump1OnOffCB1.Checked) or (Pump2OnOffCB1.Checked)
      or (Pump3OnOffCB1.Checked) or (Pump4OnOffCB1.Checked) then
   begin
    // first check the duty cycle, if it is not 100 we need an on-off loop
    if DutyCycle1FSE.Value < 100 then
     command:= command + 'g';
    command:= command + 'S'; // Sxyyy, x = pump number, y= speed
    haveS:= True;
   end
   else
    haveS:= False;
   // voltage, only write if pump is active
   if (Pump1OnOffCB1.Checked) then
   begin
    // save the first run pump, will be later used for 'D'
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS1.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB1.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS1.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB1.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS1.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB1.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS1.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   // the direction needs to be initialized for all pumps in the first step
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG1')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG1')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG1')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG1')
       as TRadioGroup).ItemIndex);
   end;
   // action
   // since it is too compliacated to check what pumps have been activated
   // in the previous step, we output an action for all pumps
   command:= command + 'I' + BoolToStr(Pump1OnOffCB1.Checked,'1','0')
            + BoolToStr(Pump2OnOffCB1.Checked,'1','0')
            + BoolToStr(Pump3OnOffCB1.Checked,'1','0')
            + BoolToStr(Pump4OnOffCB1.Checked,'1','0');
   //calculate action time in ms
   if Unit1RBs.Checked then
    timeFactor:= 1000
   else if Unit1RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit1RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   // the first one is the on time, the secvond one the off time
   // OnTime = DutyCycle/100*x; OffTime = x seconds - OnTime
   // these steps are repeated every x second until the action time is reached,
   // so DutyRepeats = ActionTime in seconds - x
   if (DutyCycle1FSE.Value < 100) and HaveS then
   begin
    // At first calculate x: It was found that the on time should not be below
    // 50 ms. Thus use x = 1s if OnTime > 50 ms, otherwise calculate x so that
    // OnTime is exactly 50 ms
    if (DutyCycle1FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle1FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle1FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime1FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + IntToStr(OnTime);
    command:= command + 'I0000M' + IntToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeCalc:= timeCalc + (XTime * (DutyRepeats + 1));
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime1FSE.Value * timeFactor);
    timeCalc:= timeCalc + (RunTime1FSE.Value * timeFactor);
   end;

   // if the direction changes, wait 1000 ms to protect the pumps
   if (Pump1OnOffCB1.Checked and Pump1OnOffCB2.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG2.ItemIndex))
      or (Pump2OnOffCB1.Checked and Pump2OnOffCB2.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG2.ItemIndex))
      or (Pump3OnOffCB1.Checked and Pump3OnOffCB2.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG2.ItemIndex))
      or (Pump4OnOffCB1.Checked and Pump4OnOffCB2.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG2.ItemIndex)) then
   begin
    // only if the next step is actually used and we have 100% duty cylce
    if (Step2UseCB.checked) and (DutyCycle1FSE.Value = 100) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeCalc:= timeCalc + 1000;
    end;
   end;
   // a timer in Lazarus or can only run for 2^31-1 milliseconds
   // the timer in the Arduino could in principle run the double time, but
   // allowing this is not worth the effort (that under all circumstances
   // unsigned 32bit int is used) and we can expect an action within 24 days
   if timeCalc > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 1 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer1.Interval:= trunc(timeCalc);
   //end step 1

   // step 2-------------------------------------------------------------------
   SOrder:= '0000';
   if (Step2UseCB.Checked and Step2TS.TabVisible) then
   begin
    // speed and direction flag
    if (Pump1OnOffCB2.Checked) or (Pump2OnOffCB2.Checked)
      or (Pump3OnOffCB2.Checked) or (Pump4OnOffCB2.Checked) then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if DutyCycle2FSE.Value < 100 then
      command:= command + 'g';
     command:= command + 'S'; // Sxyyy, x = pump number, y= speed
     haveS:= True;
    end
    else
     haveS:= False;
    // voltage, only write if pump is active
   if (Pump1OnOffCB2.Checked) then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS2.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB2.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS2.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB2.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS2.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB2.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS2.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG2')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG2')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG2')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG2')
       as TRadioGroup).ItemIndex);
   end;
   // action
   command:= command + 'I'
    + BoolToStr(Pump1OnOffCB2.Checked,'1','0')
    + BoolToStr(Pump2OnOffCB2.Checked,'1','0')
    + BoolToStr(Pump3OnOffCB2.Checked,'1','0')
    + BoolToStr(Pump4OnOffCB2.Checked,'1','0');
   //calculate action time in ms
   timeStep:= 0;
   if Unit2RBs.Checked then
    timeFactor:= 1000
   else if Unit2RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit2RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   if (DutyCycle2FSE.Value < 100) and HaveS then
   begin
    if (DutyCycle2FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle2FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle2FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime2FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I0000M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime2FSE.Value * timeFactor);
    timeStep:= RunTime2FSE.Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 1000 ms to protect the pumps
   // only if the next step is actually used and we have 100% duty cylce
    if (Step3UseCB.checked) and (DutyCycle2FSE.Value = 100) then
   begin
    if (Pump1OnOffCB2.Checked and Pump1OnOffCB3.Checked and (Pump1DirectionRG2.ItemIndex <> Pump1DirectionRG3.ItemIndex))
     or (Pump2OnOffCB2.Checked and Pump2OnOffCB3.Checked and (Pump2DirectionRG2.ItemIndex <> Pump2DirectionRG3.ItemIndex))
     or (Pump3OnOffCB2.Checked and Pump3OnOffCB3.Checked and (Pump3DirectionRG2.ItemIndex <> Pump3DirectionRG3.ItemIndex))
     or (Pump4OnOffCB2.Checked and Pump4OnOffCB3.Checked and (Pump4DirectionRG2.ItemIndex <> Pump4DirectionRG3.ItemIndex)) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeStep:= timeStep + 1000;
     timeCalc:= timeCalc + 1000;
    end;
   end
   else // next step will be step 1
   begin
    if (Pump1OnOffCB1.Checked and Pump1OnOffCB2.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG2.ItemIndex))
     or (Pump2OnOffCB1.Checked and Pump2OnOffCB2.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG2.ItemIndex))
     or (Pump3OnOffCB1.Checked and Pump3OnOffCB2.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG2.ItemIndex))
     or (Pump4OnOffCB1.Checked and Pump4OnOffCB2.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG2.ItemIndex)) then
    begin
     // only output if there is no single run
     if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
     begin
      command:= command + 'I0000M1000'; // stop for 1000 ms
      timeStep:= timeStep + 1000;
      timeCalc:= timeCalc + 1000;
     end;
    end;
   end;
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 2 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer2.Interval:= trunc(timeStep);
   end; //end step 2

   //step 3--------------------------------------------------------------------
   SOrder:= '0000';
   if (Step3UseCB.Checked and Step3TS.TabVisible) then
   begin
    // speed and direction flag
    if (Pump1OnOffCB3.Checked) or (Pump2OnOffCB3.Checked)
       or (Pump3OnOffCB3.Checked) or (Pump4OnOffCB3.Checked) then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if DutyCycle3FSE.Value < 100 then
      command:= command + 'g';
     command:= command + 'S'; // Sxyyy, x = pump number, y= speed
     haveS:= True;
    end
    else
     haveS:= False;
    // voltage, only write if pump is active
   if (Pump1OnOffCB3.Checked) then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS3.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB3.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS3.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB3.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS3.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB3.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS3.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG3')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG3')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG3')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG3')
       as TRadioGroup).ItemIndex);
   end;
   // action
   command:= command + 'I'
    + BoolToStr(Pump1OnOffCB3.Checked,'1','0')
    + BoolToStr(Pump2OnOffCB3.Checked,'1','0')
    + BoolToStr(Pump3OnOffCB3.Checked,'1','0')
    + BoolToStr(Pump4OnOffCB3.Checked,'1','0');
   //calculate action time in ms
   timeStep:= 0;
   if Unit3RBs.Checked then
    timeFactor:= 1000
   else if Unit3RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit3RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   if (DutyCycle3FSE.Value < 100) and HaveS then
   begin
    if (DutyCycle3FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle3FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle3FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime3FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I0000M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime3FSE.Value * timeFactor);
    timeStep:= RunTime3FSE.Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 1000 ms to protect the pumps
   // only if the next step is actually used and we have 100% duty cylce
   if (Step4UseCB.checked) and (DutyCycle3FSE.Value = 100) then
   begin
    if (Pump1OnOffCB3.Checked and Pump1OnOffCB4.Checked and (Pump1DirectionRG3.ItemIndex <> Pump1DirectionRG4.ItemIndex))
     or (Pump2OnOffCB3.Checked and Pump2OnOffCB4.Checked and (Pump2DirectionRG3.ItemIndex <> Pump2DirectionRG4.ItemIndex))
     or (Pump3OnOffCB3.Checked and Pump3OnOffCB4.Checked and (Pump3DirectionRG3.ItemIndex <> Pump3DirectionRG4.ItemIndex))
     or (Pump4OnOffCB3.Checked and Pump4OnOffCB4.Checked and (Pump4DirectionRG3.ItemIndex <> Pump4DirectionRG4.ItemIndex)) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeStep:= timeStep + 1000;
     timeCalc:= timeCalc + 1000;
    end;
   end
   else // next step will be step 1
   begin
    if (Pump1OnOffCB1.Checked and Pump1OnOffCB3.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG3.ItemIndex))
     or (Pump2OnOffCB1.Checked and Pump2OnOffCB3.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG3.ItemIndex))
     or (Pump3OnOffCB1.Checked and Pump3OnOffCB3.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG3.ItemIndex))
     or (Pump4OnOffCB1.Checked and Pump4OnOffCB3.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG3.ItemIndex)) then
    begin
     // only output if there is no single run
     if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
     begin
      command:= command + 'I0000M1000'; // stop for 1000 ms
      timeStep:= timeStep + 1000;
      timeCalc:= timeCalc + 1000;
     end;
    end;
   end;
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 3 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer3.Interval:= trunc(timeStep);
   end; //end step 3

   // step 4-------------------------------------------------------------------
   SOrder:= '0000';
   if (Step4UseCB.Checked and Step4TS.TabVisible) then
   begin
    // speed and direction flag
    if (Pump1OnOffCB4.Checked) or (Pump2OnOffCB4.Checked)
       or (Pump3OnOffCB4.Checked) or (Pump4OnOffCB4.Checked) then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if DutyCycle4FSE.Value < 100 then
      command:= command + 'g';
     command:= command + 'S'; // Sxyyy, x = pump number, y= speed
     haveS:= True;
    end
    else
     haveS:= False;
    // voltage, only write if pump is active
   if (Pump1OnOffCB4.Checked) then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS4.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB4.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS4.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB4.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS4.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB4.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS4.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG4')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG4')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG4')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG4')
       as TRadioGroup).ItemIndex);
   end;
   // action
   command:= command + 'I'
    + BoolToStr(Pump1OnOffCB4.Checked,'1','0')
    + BoolToStr(Pump2OnOffCB4.Checked,'1','0')
    + BoolToStr(Pump3OnOffCB4.Checked,'1','0')
    + BoolToStr(Pump4OnOffCB4.Checked,'1','0');
   //calculate action time in ms
   timeStep:= 0;
   if Unit4RBs.Checked then
    timeFactor:= 1000
   else if Unit4RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit4RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   if (DutyCycle4FSE.Value < 100) and HaveS then
   begin
    if (DutyCycle4FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle4FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle4FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime4FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I0000M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime4FSE.Value * timeFactor);
    timeStep:= RunTime4FSE.Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 1000 ms to protect the pumps
   // only if the next step is actually used and we have 100% duty cylce
   if (Step5UseCB.checked) and (DutyCycle4FSE.Value = 100) then
   begin
    if (Pump1OnOffCB4.Checked and Pump1OnOffCB5.Checked and (Pump1DirectionRG4.ItemIndex <> Pump1DirectionRG5.ItemIndex))
     or (Pump2OnOffCB4.Checked and Pump2OnOffCB5.Checked and (Pump2DirectionRG4.ItemIndex <> Pump2DirectionRG5.ItemIndex))
     or (Pump3OnOffCB4.Checked and Pump3OnOffCB5.Checked and (Pump3DirectionRG4.ItemIndex <> Pump3DirectionRG5.ItemIndex))
     or (Pump4OnOffCB4.Checked and Pump4OnOffCB5.Checked and (Pump4DirectionRG4.ItemIndex <> Pump4DirectionRG5.ItemIndex)) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeStep:= timeStep + 1000;
     timeCalc:= timeCalc + 1000;
    end;
   end
   else // next step will be step 1
   begin
    if (Pump1OnOffCB1.Checked and Pump1OnOffCB4.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG4.ItemIndex))
     or (Pump2OnOffCB1.Checked and Pump2OnOffCB4.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG4.ItemIndex))
     or (Pump3OnOffCB1.Checked and Pump3OnOffCB4.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG4.ItemIndex))
     or (Pump4OnOffCB1.Checked and Pump4OnOffCB4.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG4.ItemIndex)) then
    begin
     // only output if there is no single run
     if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
     begin
      command:= command + 'I0000M1000'; // stop for 1000 ms
      timeStep:= timeStep + 1000;
      timeCalc:= timeCalc + 1000;
     end;
    end;
   end;
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 4 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer4.Interval:= trunc(timeStep);
   end; //end step 4

   // step 5-------------------------------------------------------------------
   SOrder:= '0000';
   if (Step5UseCB.Checked and Step5TS.TabVisible) then
   begin
    // speed and direction flag
    if (Pump1OnOffCB5.Checked) or (Pump2OnOffCB5.Checked)
       or (Pump3OnOffCB5.Checked) or (Pump4OnOffCB5.Checked) then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if DutyCycle5FSE.Value < 100 then
      command:= command + 'g';
     command:= command + 'S'; // Sxyyy, x = pump number, y= speed
     haveS:= True;
    end
    else
     haveS:= False;
    // voltage, only write if pump is active
   if (Pump1OnOffCB5.Checked) then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS5.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB5.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS5.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB5.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS5.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB5.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS5.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG5')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG5')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG5')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG5')
       as TRadioGroup).ItemIndex);
   end;
   // action
   command:= command + 'I'
    + BoolToStr(Pump1OnOffCB5.Checked,'1','0')
    + BoolToStr(Pump2OnOffCB5.Checked,'1','0')
    + BoolToStr(Pump3OnOffCB5.Checked,'1','0')
    + BoolToStr(Pump4OnOffCB5.Checked,'1','0');
   //calculate action time in ms
   timeStep:= 0;
   if Unit5RBs.Checked then
    timeFactor:= 1000
   else if Unit5RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit5RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   if (DutyCycle5FSE.Value < 100) and HaveS then
   begin
    if (DutyCycle5FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle5FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle5FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime5FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I0000M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime5FSE.Value * timeFactor);
    timeStep:= RunTime5FSE.Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 1000 ms to protect the pumps
   // only if the next step is actually used and we have 100% duty cylce
   if (Step6UseCB.checked) and (DutyCycle5FSE.Value = 100) then
   begin
    if (Pump1OnOffCB5.Checked and Pump1OnOffCB6.Checked and (Pump1DirectionRG5.ItemIndex <> Pump1DirectionRG6.ItemIndex))
     or (Pump2OnOffCB5.Checked and Pump2OnOffCB6.Checked and (Pump2DirectionRG5.ItemIndex <> Pump2DirectionRG6.ItemIndex))
     or (Pump3OnOffCB5.Checked and Pump3OnOffCB6.Checked and (Pump3DirectionRG5.ItemIndex <> Pump3DirectionRG6.ItemIndex))
     or (Pump4OnOffCB5.Checked and Pump4OnOffCB6.Checked and (Pump4DirectionRG5.ItemIndex <> Pump4DirectionRG6.ItemIndex)) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeStep:= timeStep + 1000;
     timeCalc:= timeCalc + 1000;
    end;
   end
   else // next step will be step 1
   begin
    if (Pump1OnOffCB1.Checked and Pump1OnOffCB5.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG5.ItemIndex))
     or (Pump2OnOffCB1.Checked and Pump2OnOffCB5.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG5.ItemIndex))
     or (Pump3OnOffCB1.Checked and Pump3OnOffCB5.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG5.ItemIndex))
     or (Pump4OnOffCB1.Checked and Pump4OnOffCB5.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG5.ItemIndex)) then
    begin
     // only output if there is no single run
     if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
     begin
      command:= command + 'I0000M1000'; // stop for 1000 ms
      timeStep:= timeStep + 1000;
      timeCalc:= timeCalc + 1000;
     end;
    end;
   end;
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 5 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer5.Interval:= trunc(timeStep);
   end; //end step 5

   // step 6 ------------------------------------------------------------------
   SOrder:= '0000';
   if (Step6UseCB.Checked and Step6TS.TabVisible) then
   begin
    // speed and direction flag
    if (Pump1OnOffCB6.Checked) or (Pump2OnOffCB6.Checked)
       or (Pump3OnOffCB6.Checked) or (Pump4OnOffCB6.Checked) then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if DutyCycle6FSE.Value < 100 then
      command:= command + 'g';
     command:= command + 'S'; // Sxyyy, x = pump number, y= speed
     haveS:= True;
    end
    else
     haveS:= False;
    // voltage, only write if pump is active
   if (Pump1OnOffCB6.Checked) then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump1VoltageFS6.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump2OnOffCB6.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump2VoltageFS6.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump3OnOffCB6.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else if SOrder[2] = '0' then
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump3VoltageFS6.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (Pump4OnOffCB6.Checked) then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else if SOrder[3] = '0' then
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(Pump4VoltageFS6.Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   // direction
   if HaveS then // only if there is any pump running
   begin
    command:= command + 'D' +
     IntToStr((FindComponent('Pump' + SOrder[0] + 'DirectionRG6')
      as TRadioGroup).ItemIndex);
    if SOrder[1] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[1] + 'DirectionRG6')
       as TRadioGroup).ItemIndex);
    if SOrder[2] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[2] + 'DirectionRG6')
       as TRadioGroup).ItemIndex);
    if SOrder[3] <> '0' then
     command:= command +
      IntToStr((FindComponent('Pump' + SOrder[3] + 'DirectionRG6')
       as TRadioGroup).ItemIndex);
   end;
   // action
   command:= command + 'I'
    + BoolToStr(Pump1OnOffCB6.Checked,'1','0')
    + BoolToStr(Pump2OnOffCB6.Checked,'1','0')
    + BoolToStr(Pump3OnOffCB6.Checked,'1','0')
    + BoolToStr(Pump4OnOffCB6.Checked,'1','0');
   //calculate action time in ms
   timeStep:= 0;
   if Unit6RBs.Checked then
    timeFactor:= 1000
   else if Unit6RBmin.Checked then
    timeFactor:= 1000 * 60
   else if Unit6RBh.Checked then
    timeFactor:= 1000 * 60 * 60;

   // if we have not 100% duty cycle we need 2 steps
   if (DutyCycle6FSE.Value < 100) and HaveS then
   begin
    if (DutyCycle6FSE.Value / 100) >= 0.05 then
     XTime:= 1000
    else
     XTime:= round(0.05 / (DutyCycle6FSE.Value / 100) * 1000);
    OnTime:= round(DutyCycle6FSE.Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round(RunTime6FSE.Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I0000M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M' + FloatToStr(RunTime6FSE.Value * timeFactor);
    timeStep:= RunTime6FSE.Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 1000 ms to protect the pumps
   if (Pump1OnOffCB1.Checked and Pump1OnOffCB6.Checked and (Pump1DirectionRG1.ItemIndex <> Pump1DirectionRG6.ItemIndex))
    or (Pump2OnOffCB1.Checked and Pump2OnOffCB6.Checked and (Pump2DirectionRG1.ItemIndex <> Pump2DirectionRG6.ItemIndex))
    or (Pump3OnOffCB1.Checked and Pump3OnOffCB6.Checked and (Pump3DirectionRG1.ItemIndex <> Pump3DirectionRG6.ItemIndex))
    or (Pump4OnOffCB1.Checked and Pump4OnOffCB6.Checked and (Pump4DirectionRG1.ItemIndex <> Pump4DirectionRG6.ItemIndex)) then
   begin
    // only output if there is no single run
    if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
    begin
     command:= command + 'I0000M1000'; // stop for 1000 ms
     timeStep:= timeStep + 1000;
     timeCalc:= timeCalc + 1000;
    end;
   end;
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time 6 too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   StepTimer6.Interval:= trunc(timeStep);
   end; //end step 6

   // end loop flag
   if RunEndlessCB.Checked then
   begin
    command:= command + 'G';
    timeCalc:= MAXINT; // set maximal possible int for infinite repeats
   end;
   // if repeated run
   if (StrToInt(RepeatSE.Text) > 0) and (not RunEndlessCB.Checked) then
   begin
    command:= command + 'G' + IntToStr(RepeatSE.Value);
    timeCalc:= timeCalc * (RepeatSE.Value + 1);
   end;

  // explicitly turn off all pumps, turn off LED and execute flag
  // the explicite turn off is important because the Arduino command
  // execution loop needs several 100 ms. But when an explicit stop is sent,
  // the loop will end immediately
  command:= command + 'I0000lR';

  if not RunEndlessCB.Checked then
  begin
   // output time in sensible unit
   if timeCalc <= 1e6 then
   begin
    TotalTimeLE.Text:= FloatToStr(timeCalc /1000);
    TotalTimeLE.EditLabel.Caption:= 'Total Time in s';
   end
   else if timeCalc <= 60e6 then
   begin
    timeOut:= timeCalc /1000/60;
    TotalTimeLE.Text:= FloatToStr(RoundTo(timeOut, -2));
    TotalTimeLE.EditLabel.Caption:= 'Total Time in min';
   end
   else if timeCalc > 60e6 then
   begin
    timeOut:= timeCalc /1000/60/60;
    TotalTimeLE.Text:= FloatToStr(RoundTo(timeOut, -2));
    TotalTimeLE.EditLabel.Caption:= 'Total Time in h';
   end;
  end
  else
   TotalTimeLE.Text:= 'Until Stop pressed';

  // output the time and result
  time:= trunc(timeCalc);
  globalTime:= time;
  result:= True;

end;

procedure TMainForm.PumpOnOffCBSingleChange(Sender: TObject);
var
  i : integer;
begin
  for i:= 1 to 4 do
  begin
   (FindComponent('Pump' + IntToStr(i) + 'DirectionRG')
     as TRadioGroup).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB')
     as TCheckBox).Checked;
   (FindComponent('Pump' + IntToStr(i) + 'VoltageFS')
     as TFloatSpinEdit).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB')
     as TCheckBox).Checked;
  end;
end;

procedure TMainForm.PumpOnOffCBLoopChange(Sender: TObject);
var
  i, step : integer;
begin
for step:= 1 to 6 do
  for i:= 1 to 4 do
  begin
   (FindComponent('Pump' + IntToStr(i) + 'DirectionRG' + IntToStr(step))
     as TRadioGroup).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB' + IntToStr(step))
     as TCheckBox).Checked;
   (FindComponent('Pump' + IntToStr(i) + 'VoltageFS' + IntToStr(step))
     as TFloatSpinEdit).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB' + IntToStr(step))
     as TCheckBox).Checked;
  end;
end;

procedure TMainForm.RepeatPCChange(Sender: TObject);
// set visibility of repeat tabs
var
  i : integer;
begin
  for i:= 2 to 5 do
   if (FindComponent('Step' + IntToStr(i) + 'TS')
      as TTabSheet).TabVisible = False then
    (FindComponent('Step' + IntToStr(i+1) + 'TS')
      as TTabSheet).TabVisible:= False;
  for i:= 2 to 5 do
   if ((FindComponent('Step' + IntToStr(i) + 'UseCB')
      as TCheckBox).Checked and
      (FindComponent('Step' + IntToStr(i) + 'TS')
      as TTabSheet).TabVisible) then
    (FindComponent('Step' + IntToStr(i+1) + 'TS')
      as TTabSheet).TabVisible:= True;
end;

procedure TMainForm.RunBBClick(Sender: TObject);
// execute generated command
var
  command, StartTime : string;
  j : integer;
  commandResult : Boolean = False;
  time : Double;
begin
  // generate command
  commandResult:= GenerateCommand(time, command);
  // if GenerateCommand returns e.g. a too long time do nothing
  if not commandResult then
   exit;
  StopTimer.Enabled:= False;
  // whatever might happen, there must be a way to stop
  StopBB.Enabled:= True;
  CommandM.Text:= command;
  // The TinyZero has an input buffer of 512 characters, if it is full, the
  // COM connection will break (no communication posible).
  // There is a special case (in my opinion a bug) that if the input string has
  // modulo 64 characters, the TinyZero will not accept it directly. First with
  // the next command it will be executed (e.g. when pressing the Stop button).
  // The solution is to vary in this case the string termination since the
  // Arduino code checks only for the #10 char.
  if (Length(command) + 2) mod 64 = 0 then
   command:= command + #10
  else
   command:= command + #13#10;

  // if we have an open serial connection, execute
  if HaveSerial then
  begin
   // disable the connection menu that the user cannot close
   // the conenction while the pumps are running
   ConnectionMenu.Enabled:= False;
   FirmwareUpdateMenu.Enabled:= False;
   ser.SendString(command);
   if ser.LastError <> 0 then
   begin
    with Application do
     MessageBox(PChar(COMPort + ' error: ' + ser.LastErrorDesc), 'Error', MB_ICONERROR+MB_OK);
    ConnComPortLE.Color:= clRed;
    ConnComPortLE.Text:= 'Try to reconnect';
    IndicatorPanelP.Caption:= 'Connection failiure';
    RunBB.Enabled:= False;
    RunFreeBB.Enabled:= False;
    if ser.LastError = 9997 then
    begin
     StopBB.Enabled:= False;
     exit; // we cannot close socket or free if the connection timed out
    end;
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exit;
   end;
  end
  else // no serial connection
  begin
   RunBB.Enabled:= False;
   RunFreeBB.Enabled:= False;
   exit;
  end;
  RunBB.Caption:= 'Pumps running';
  RunBB.Enabled:= False;
  RunFreeBB.Enabled:= False;
  GenerateCommandBB.Enabled:= False;
  // disable all setting possibilities
  RunSettingsGB.Enabled:= False;
  for j:= 1 to 6 do
   (FindComponent('Step' + IntToStr(j) + 'TS')
      as TTabSheet).Enabled:= False;
  RepeatOutputLE.Visible:= False;
  IndicatorPanelP.Caption:= 'Pumps are running';
  IndicatorPanelP.Color:= clRed;
  if (StrToInt(RepeatSE.Text) > 0) and (RunEndlessCB.Checked = False) then
  begin
   RepeatOutputLE.Visible:= True;
   RepeatTime:= trunc(time / (StrToFloat(RepeatSE.Text) + 1));
   if RepeatTime < 86400000 then // if less than one day
    RepeatTimer.Interval:= trunc(RepeatTime)
   else // to restart timer every day
    RepeatTimer.Interval:= 86400000;
   RepeatTimer.Enabled:= True;
   CurrentRepeat:= 0;
   RepeatOutputLE.Text:= '0';
   // set time that will later be evaluated when the timer ends
  globalRepeatTime:= RepeatTime;
  end;
  // delete finish time
  FinishTimeLE.Text:= '';
  // output start time
  startTime := FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
  StartTimeLE.Text:= startTime;

  // start OverallTimer to indicate running state
  if time < 86400000 then // if less than one day
   OverallTimer.Interval:= trunc(time)
  else // to restart timer every day
   OverallTimer.Interval:= 86400000;
  OverallTimer.Enabled:= True;
  // set time that will later be evaluated when the timer ends
  globalTime:= time;
  // show first tab and start its timer
  RepeatPC.ActivePage:= Step1TS;
  StepTimer1.Enabled:= true;
  // do not show unused steps
  for j:= 2 to 6 do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
     as TCheckBox).Checked = False then
    (FindComponent('Step' + IntToStr(j) + 'TS')
     as TTabSheet).TabVisible:= False;
  end;

end;

procedure TMainForm.RepeatTimerFinished;
// Actions after repeat time interval ends
begin
 // if one day has passed but the pumps must run longer
 if globalRepeatTime > 86400000 then
 begin
  globalRepeatTime:= globalRepeatTime - 4000;
  if globalRepeatTime < 86400000 then // if less than one day
   RepeatTimer.Interval:= trunc(globalRepeatTime)
  else // to restart timer every day
   RepeatTimer.Interval:= 86400000;
  RepeatTimer.Enabled:= True;
  exit;
 end;
 if StrToInt(RepeatSE.Text) > StrToInt(RepeatOutputLE.Text) then
 begin
  inc(CurrentRepeat);
  globalRepeatTime:= RepeatTime;
  RepeatTimer.Enabled:= True;
  // only increase shown repeat if not already stopped
  if IndicatorPanelP.Caption <> 'Manually stopped' then
   RepeatOutputLE.Text:= IntToStr(CurrentRepeat);
 end
 else
  RepeatTimer.Enabled:= False;
end;

procedure TMainForm.OverallTimerFinished;
// Actions after time interval ends
var
  finishTime : string;
  j : integer;
begin
 // if one day has passed but the pumps must run longer
 if globalTime > 86400000 then
 begin
  globalTime:= globalTime - 86400000;
  if globalTime < 86400000 then // if less than one day
   OverallTimer.Interval:= trunc(globalTime)
  else // to restart timer every day
   OverallTimer.Interval:= 86400000;
  OverallTimer.Enabled:= True;
  exit;
 end;
 // output finish time
 finishTime := FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
 FinishTimeLE.Text:= finishTime;
 OverallTimer.Enabled:= False;
 ConnectionMenu.Enabled:= True;
 FirmwareUpdateMenu.Enabled:= True;
 RunBB.Caption:= 'Run Pumps';
 RunBB.Enabled:= True;
 RunFreeBB.Enabled:= True;
 GenerateCommandBB.Enabled:= True;
 IndicatorPanelP.Caption:= 'Run finished';
 IndicatorPanelP.Color:= clInfoBk;
 RepeatOutputLE.Visible:= False;
 // enable all setting possibilities
 RunSettingsGB.Enabled:= True;
 for j:= 1 to 6 do
 begin
  (FindComponent('Step' + IntToStr(j) + 'TS')
     as TTabSheet).Enabled:= True;
  // stop all timers
  (FindComponent('StepTimer' + IntToStr(j))
     as TTimer).Enabled:= False;
 end;
 // view tab after last used step
  for j:= 5 downto 2 do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
     as TCheckBox).Checked = True then
    begin
     (FindComponent('Step' + IntToStr(j+1) + 'TS')
      as TTabSheet).TabVisible:= True;
     break;
    end;
  end;
  // tab must always be visible
  Step2TS.TabVisible:= True;

end;

procedure TMainForm.StepTimer1Finished(Sender: TObject);
begin
 StepTimer1.Enabled:= False;
 // if there is a step 2, start its timer and show its tab
 if Step2UseCB.checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  StepTimer2.Enabled:= True;
  RepeatPC.ActivePage:= Step2TS;
 end;
end;

procedure TMainForm.StepTimer2Finished(Sender: TObject);
begin
 StepTimer2.Enabled:= False;
 // if there is a step 3, start its timer and show its tab
 if Step3UseCB.checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  StepTimer3.Enabled:= True;
  RepeatPC.ActivePage:= Step3TS;
 end
 else // there might be a repeat
 begin
  // switch to step 1
  StepTimer1.Enabled:= True;
  RepeatPC.ActivePage:= Step1TS;
 end;
end;

procedure TMainForm.StepTimer3Finished(Sender: TObject);
begin
 StepTimer3.Enabled:= False;
 // if there is a step 4, start its timer and show its tab
 if Step4UseCB.checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  StepTimer4.Enabled:= True;
  RepeatPC.ActivePage:= Step4TS;
 end
 else // there might be a repeat
 begin
  // switch to step 1
  StepTimer1.Enabled:= True;
  RepeatPC.ActivePage:= Step1TS;
 end;
end;

procedure TMainForm.StepTimer4Finished(Sender: TObject);
begin
 StepTimer4.Enabled:= False;
 // if there is a step 5, start its timer and show its tab
 if Step5UseCB.checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  StepTimer5.Enabled:= True;
  RepeatPC.ActivePage:= Step5TS;
 end
 else // there might be a repeat
 begin
  // switch to step 1
  StepTimer1.Enabled:= True;
  RepeatPC.ActivePage:= Step1TS;
 end;
end;

procedure TMainForm.StepTimer5Finished(Sender: TObject);
begin
 StepTimer5.Enabled:= False;
 // if there is a step 6, start its timer and show its tab
 if Step6UseCB.checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  StepTimer6.Enabled:= True;
  RepeatPC.ActivePage:= Step6TS;
 end
 else // there might be a repeat
 begin
  // switch to step 1
  StepTimer1.Enabled:= True;
  RepeatPC.ActivePage:= Step1TS;
 end;
end;

procedure TMainForm.StepTimer6Finished(Sender: TObject);
begin
 StepTimer6.Enabled:= False;
 // switch to step 1
 StepTimer1.Enabled:= True;
 RepeatPC.ActivePage:= Step1TS;
end;

procedure TMainForm.StopBBClick(Sender: TObject);
// stop all pumps
var
  command, stopTime : string;
  j : integer;
begin
  // re-enable the connection menu in every case
  ConnectionMenu.Enabled:= True;
  FirmwareUpdateMenu.Enabled:= True;
  command:= '';
  // address
  command:= '/0';
  // disable all pumps
  command:= command + 'I0000';
  // execute flag and turn off LED
  command:= command + 'lR';
  // execute
  CommandM.Text:= command;
  command:= command + #13#10;
  if HaveSerial then
  begin
   ser.SendString(command);
   if ser.LastError <> 0 then
   begin
    with Application do
     MessageBox(PChar(COMPort + 'error: ' + ser.LastErrorDesc), 'Error', MB_ICONERROR+MB_OK);
    ConnComPortLE.Color:= clRed;
    ConnComPortLE.Text:= 'Try to reconnect';
    IndicatorPanelP.Caption:= 'Connection failiure';
    if ser.LastError = 9997 then
    begin
     StopBB.Enabled:= False;
     exit; // we cannot close socket or free when the connection timed out
    end;
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exit;
   end;
   //received:= ser.RecvString(1000);
   //with Application do
   // MessageBox(PChar(received), 'Information', MB_ICONINFORMATION+MB_OK);
  end;
  // output stop time only when there was actually a run
  if IndicatorPanelP.Caption = 'Pumps are running' then
  begin
   stopTime:= FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
   FinishTimeLE.Text:= stopTime;
   IndicatorPanelP.Caption:= 'Manually stopped';
   IndicatorPanelP.Color:= clHighlight;
  end;
  OverallTimer.Enabled:= False;
  RepeatTimer.Enabled:= False;
  // we must prevent that too long commands overflow the Arduino command buffer
  // therefore block the enabing to start a new action for a second
  StopTimer.Enabled:= True;
  RunBB.Enabled:= False;
  RunFreeBB.Enabled:= False;
  GenerateCommandBB.Enabled:= True;
  // enable all setting possibilities
  RunSettingsGB.Enabled:= True;
  for j:= 1 to 6 do
  begin
   (FindComponent('Step' + IntToStr(j) + 'TS')
     as TTabSheet).Enabled:= True;
   // stop all timers
   (FindComponent('StepTimer' + IntToStr(j))
     as TTimer).Enabled:= False;
  end;
  // view tab after last used step
  for j:= 5 downto 2 do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
     as TCheckBox).Checked = True then
    begin
     (FindComponent('Step' + IntToStr(j+1) + 'TS')
      as TTabSheet).TabVisible:= True;
     break;
    end;
  end;
  // tab must always be visible
  Step2TS.TabVisible:= True;

end;

procedure TMainForm.StopTimerFinished;
// enable to execute new commands
begin
 RunBB.Caption:= 'Run Pumps';
 RunBB.Enabled:= True;
 RunFreeBB.Enabled:= True;
 StopTimer.Enabled:= False;
end;

procedure TMainForm.RunFreeBBClick(Sender: TObject);
// starts free running cycle:
// run 30 seconds in each direction 10 times
var
  i, j : integer;
begin
  // we need 2 steps
  Step2UseCB.Checked:= True;
  Step3UseCB.Checked:= False;
  RunEndlessCB.Checked:= False;
  // we run each step for 30 seconds
  RunTime1FSE.Value:= 30;
  Unit1RBs.Checked:= True;
  RunTime2FSE.Value:= 30;
  Unit2RBs.Checked:= True;
  // set to 100% duty cycle
  DutyCycle1FSE.Value:= 100;
  DutyCycle2FSE.Value:= 100;
  // turn on all pumps
  for i:= 1 to 2 do
   for j:= 1 to 4 do
   begin
    (FindComponent('Pump' + IntToStr(j) + 'OnOffCB' + IntToStr(i))
      as TCheckBox).Checked:= True;
    // set voltage to 3.3 V
    (FindComponent('Pump' + IntToStr(j) + 'VoltageFS' + IntToStr(i))
      as TFloatSpinEdit).Value:= 3.3;
    // forward 30 seconds
    if i=1 then
    (FindComponent('Pump' + IntToStr(j) + 'DirectionRG' + IntToStr(i))
      as TRadioGroup).ItemIndex:= 0
    // backward 30 seconds
    else
     (FindComponent('Pump' + IntToStr(j) + 'DirectionRG' + IntToStr(i))
      as TRadioGroup).ItemIndex:= 1;
   end;
  // repeat 9 times
  RepeatSE.Value:= 9;
  // run
  RunBBClick(Sender);
end;

procedure TMainForm.RunEndlessCBChange(Sender: TObject);
// if the pumps should run forever
begin
  if RunEndlessCB.Checked then
  begin
   RepeatSE.Enabled:= False;
   RepeatOutputLE.Visible:= False;
   // disable runtime only, if there is only one step
   if not Step2UseCB.Checked then
    ActionTime1GB.Enabled := False;
  end
  else
  begin
   RepeatSE.Enabled:= True;
   if not Step2UseCB.Checked then
    ActionTime1GB.Enabled := True;
  end;
end;

procedure TMainForm.Step2UseCBChange(Sender: TObject);
begin
  if Step2UseCB.Checked then
  begin
   Step3TS.TabVisible:= True;
   ActionTime2GB.Enabled:= True;
   DutyCycle2GB.Enabled:= True;
   Pump1GB2.Enabled:= True;
   Pump2GB2.Enabled:= True;
   Pump3GB2.Enabled:= True;
   Pump4GB2.Enabled:= True;
   // in case it was disabled on unchecking step 2
   if not ActionTime1GB.Enabled then
    ActionTime1GB.Enabled:= True;
  end
  else
  begin
   Step3TS.TabVisible:= False;
   ActionTime2GB.Enabled:= False;
   DutyCycle2GB.Enabled:= False;
   Pump1GB2.Enabled:= False;
   Pump2GB2.Enabled:= False;
   Pump3GB2.Enabled:= False;
   Pump4GB2.Enabled:= False;
   // if there is only one step and endless repeat disable time settings
   if RunEndlessCB.Checked then
    ActionTime1GB.Enabled:= False;
  end;
  RepeatPCChange(Sender);
end;

procedure TMainForm.Step3UseCBChange(Sender: TObject);
begin
  if Step3UseCB.Checked then
  begin
   Step4TS.TabVisible:= True;
   ActionTime3GB.Enabled:= True;
   DutyCycle3GB.Enabled:= True;
   Pump1GB3.Enabled:= True;
   Pump2GB3.Enabled:= True;
   Pump3GB3.Enabled:= True;
   Pump4GB3.Enabled:= True;
  end
  else
  begin
   Step4TS.TabVisible:= False;
   ActionTime3GB.Enabled:= False;
   DutyCycle3GB.Enabled:= False;
   Pump1GB3.Enabled:= False;
   Pump2GB3.Enabled:= False;
   Pump3GB3.Enabled:= False;
   Pump4GB3.Enabled:= False;
  end;
  RepeatPCChange(Sender);
end;

procedure TMainForm.Step4UseCBChange(Sender: TObject);
begin
  if Step4UseCB.Checked then
  begin
   Step5TS.TabVisible:= True;
   ActionTime4GB.Enabled:= True;
   DutyCycle4GB.Enabled:= True;
   Pump1GB4.Enabled:= True;
   Pump2GB4.Enabled:= True;
   Pump3GB4.Enabled:= True;
   Pump4GB4.Enabled:= True;
  end
  else
  begin
   Step5TS.TabVisible:= False;
   ActionTime4GB.Enabled:= False;
   DutyCycle4GB.Enabled:= False;
   Pump1GB4.Enabled:= False;
   Pump2GB4.Enabled:= False;
   Pump3GB4.Enabled:= False;
   Pump4GB4.Enabled:= False;
  end;
  RepeatPCChange(Sender);
end;

procedure TMainForm.Step5UseCBChange(Sender: TObject);
begin
  if Step5UseCB.Checked then
  begin
   Step6TS.TabVisible:= True;
   ActionTime5GB.Enabled:= True;
   DutyCycle5GB.Enabled:= True;
   Pump1GB5.Enabled:= True;
   Pump2GB5.Enabled:= True;
   Pump3GB5.Enabled:= True;
   Pump4GB5.Enabled:= True;
  end
  else
  begin
   Step6TS.TabVisible:= False;
   ActionTime5GB.Enabled:= False;
   DutyCycle5GB.Enabled:= False;
   Pump1GB5.Enabled:= False;
   Pump2GB5.Enabled:= False;
   Pump3GB5.Enabled:= False;
   Pump4GB5.Enabled:= False;
  end;
  RepeatPCChange(Sender);
end;

procedure TMainForm.Step6UseCBChange(Sender: TObject);
begin
 if Step6UseCB.Checked then
  begin
   ActionTime6GB.Enabled:= True;
   DutyCycle6GB.Enabled:= True;
   Pump1GB6.Enabled:= True;
   Pump2GB6.Enabled:= True;
   Pump3GB6.Enabled:= True;
   Pump4GB6.Enabled:= True;
  end
  else
  begin
   ActionTime6GB.Enabled:= False;
   DutyCycle6GB.Enabled:= False;
   Pump1GB6.Enabled:= False;
   Pump2GB6.Enabled:= False;
   Pump3GB6.Enabled:= False;
   Pump4GB6.Enabled:= False;
  end;
end;

procedure TMainForm.DutyCycle1FSEChange(Sender: TObject);
var
j : integer;
begin
 // if the duty cycle is not 100% we must require 1.1 V for the pumps
 // otherwise the voltage would be to low to start a short movement
 if (DutyCycle1FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS1')
      as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS1')
      as TFloatSpinEdit).MinValue:= 0;
end;

procedure TMainForm.DutyCycle2FSEChange(Sender: TObject);
var
 j : integer;
begin
 if (DutyCycle2FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS2')
     as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS2')
     as TFloatSpinEdit).MinValue:= 0;
end;

procedure TMainForm.DutyCycle3FSEChange(Sender: TObject);
var
 j : integer;
begin
 if (DutyCycle3FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS3')
     as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS3')
     as TFloatSpinEdit).MinValue:= 0;
end;

procedure TMainForm.DutyCycle4FSEChange(Sender: TObject);
var
 j : integer;
begin
 if (DutyCycle4FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS4')
     as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS4')
     as TFloatSpinEdit).MinValue:= 0;
end;

procedure TMainForm.DutyCycle5FSEChange(Sender: TObject);
var
 j : integer;
begin
 if (DutyCycle5FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS5')
     as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS5')
     as TFloatSpinEdit).MinValue:= 0;
end;

procedure TMainForm.DutyCycle6FSEChange(Sender: TObject);
var
 j : integer;
begin
 if (DutyCycle6FSE.Value < 100) then
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS6')
     as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to 4 do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS6')
     as TFloatSpinEdit).MinValue:= 0;
end;


end.

