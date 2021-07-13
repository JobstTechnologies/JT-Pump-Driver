unit JTPumpDriverMain2;

{$mode objfpc}{$H+}{$R+}{$Q+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Menus, Math,
  StdCtrls, ExtCtrls, Spin, Buttons, LCLType, Registry, Process, SynaSer,
  Crt, StrUtils, PopupNotifier, Character, UITypes, Streamex,
  // the custom forms
  SerialUSBSelection, PumpNameSetting, AboutForm;

type

  { TMainForm }

  TMainForm = class(TForm)
    DutyCycle1FSE: TFloatSpinEdit;
    DutyCycle2FSE: TFloatSpinEdit;
    DutyCycle3FSE: TFloatSpinEdit;
    DutyCycle4FSE: TFloatSpinEdit;
    DutyCycle5FSE: TFloatSpinEdit;
    DutyCycle6FSE: TFloatSpinEdit;
    DutyCycle7FSE: TFloatSpinEdit;
    ActionTime1GB: TGroupBox;
    ActionTime2GB: TGroupBox;
    ActionTime3GB: TGroupBox;
    ActionTime4GB: TGroupBox;
    ActionTime5GB: TGroupBox;
    ActionTime6GB: TGroupBox;
    ActionTime7GB: TGroupBox;
    DutyCycle1GB: TGroupBox;
    DutyCycle2GB: TGroupBox;
    DutyCycle3GB: TGroupBox;
    DutyCycle4GB: TGroupBox;
    DutyCycle5GB: TGroupBox;
    DutyCycle6GB: TGroupBox;
    DutyCycle7GB: TGroupBox;
    GenerateCommandBB: TBitBtn;
    ActionsGB: TGroupBox;
    CommandL: TLabel;
    CommandM: TMemo;
    FirmwareUpdateMI: TMenuItem;
    AboutMI: TMenuItem;
    FirmwareFileDialog: TOpenDialog;
    FirmwareNote: TPopupNotifier;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    GetFirmwareVersionMI: TMenuItem;
    Label23: TLabel;
    Label28: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    LiveModeCB: TCheckBox;
    LoadActionMI: TMenuItem;
    LoadedActionFileM: TMemo;
    FirmwareResetMI: TMenuItem;
    SaveActionMI: TMenuItem;
    FileMI: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    StepTimer1: TTimer;
    StepTimer2: TTimer;
    StepTimer3: TTimer;
    StepTimer4: TTimer;
    StepTimer5: TTimer;
    StepTimer6: TTimer;
    StepTimer7: TTimer;
    StopTimer: TTimer;
    StartTimeLE: TLabeledEdit;
    FinishTimeLE: TLabeledEdit;
    TotalTimeLE: TLabeledEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    RunTime1FSE: TFloatSpinEdit;
    RunTime2FSE: TFloatSpinEdit;
    RunTime3FSE: TFloatSpinEdit;
    RunTime4FSE: TFloatSpinEdit;
    RunTime5FSE: TFloatSpinEdit;
    RunTime6FSE: TFloatSpinEdit;
    RunTime7FSE: TFloatSpinEdit;
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
    Pump1DirectionRG7: TRadioGroup;
    Pump1GB1: TGroupBox;
    Pump1GB2: TGroupBox;
    Pump1GB3: TGroupBox;
    Pump1GB4: TGroupBox;
    Pump1GB5: TGroupBox;
    Pump1GB6: TGroupBox;
    Pump1GB7: TGroupBox;
    Pump1OnOffCB1: TCheckBox;
    Pump1OnOffCB2: TCheckBox;
    Pump1OnOffCB3: TCheckBox;
    Pump1OnOffCB4: TCheckBox;
    Pump1OnOffCB5: TCheckBox;
    Pump1OnOffCB6: TCheckBox;
    Pump1OnOffCB7: TCheckBox;
    Pump1VoltageFS1: TFloatSpinEdit;
    Pump1VoltageFS2: TFloatSpinEdit;
    Pump1VoltageFS3: TFloatSpinEdit;
    Pump1VoltageFS4: TFloatSpinEdit;
    Pump1VoltageFS5: TFloatSpinEdit;
    Pump1VoltageFS6: TFloatSpinEdit;
    Pump1VoltageFS7: TFloatSpinEdit;
    Pump2DirectionRG1: TRadioGroup;
    Pump2DirectionRG2: TRadioGroup;
    Pump2DirectionRG3: TRadioGroup;
    Pump2DirectionRG4: TRadioGroup;
    Pump2DirectionRG5: TRadioGroup;
    Pump2DirectionRG6: TRadioGroup;
    Pump2DirectionRG7: TRadioGroup;
    Pump2GB1: TGroupBox;
    Pump2GB2: TGroupBox;
    Pump2GB3: TGroupBox;
    Pump2GB4: TGroupBox;
    Pump2GB5: TGroupBox;
    Pump2GB6: TGroupBox;
    Pump2GB7: TGroupBox;
    Pump2OnOffCB1: TCheckBox;
    Pump2OnOffCB2: TCheckBox;
    Pump2OnOffCB3: TCheckBox;
    Pump2OnOffCB4: TCheckBox;
    Pump2OnOffCB5: TCheckBox;
    Pump2OnOffCB6: TCheckBox;
    Pump2OnOffCB7: TCheckBox;
    Pump2VoltageFS1: TFloatSpinEdit;
    Pump2VoltageFS2: TFloatSpinEdit;
    Pump2VoltageFS3: TFloatSpinEdit;
    Pump2VoltageFS4: TFloatSpinEdit;
    Pump2VoltageFS5: TFloatSpinEdit;
    Pump2VoltageFS6: TFloatSpinEdit;
    Pump2VoltageFS7: TFloatSpinEdit;
    Pump3DirectionRG1: TRadioGroup;
    Pump3DirectionRG2: TRadioGroup;
    Pump3DirectionRG3: TRadioGroup;
    Pump3DirectionRG4: TRadioGroup;
    Pump3DirectionRG5: TRadioGroup;
    Pump3DirectionRG6: TRadioGroup;
    Pump3DirectionRG7: TRadioGroup;
    Pump3GB1: TGroupBox;
    Pump3GB2: TGroupBox;
    Pump3GB3: TGroupBox;
    Pump3GB4: TGroupBox;
    Pump3GB5: TGroupBox;
    Pump3GB6: TGroupBox;
    Pump3GB7: TGroupBox;
    Pump3OnOffCB1: TCheckBox;
    Pump3OnOffCB2: TCheckBox;
    Pump3OnOffCB3: TCheckBox;
    Pump3OnOffCB4: TCheckBox;
    Pump3OnOffCB5: TCheckBox;
    Pump3OnOffCB6: TCheckBox;
    Pump3OnOffCB7: TCheckBox;
    Pump3VoltageFS1: TFloatSpinEdit;
    Pump3VoltageFS2: TFloatSpinEdit;
    Pump3VoltageFS3: TFloatSpinEdit;
    Pump3VoltageFS4: TFloatSpinEdit;
    Pump3VoltageFS5: TFloatSpinEdit;
    Pump3VoltageFS6: TFloatSpinEdit;
    Pump3VoltageFS7: TFloatSpinEdit;
    Pump4DirectionRG1: TRadioGroup;
    Pump4DirectionRG2: TRadioGroup;
    Pump4DirectionRG3: TRadioGroup;
    Pump4DirectionRG4: TRadioGroup;
    Pump4DirectionRG5: TRadioGroup;
    Pump4DirectionRG6: TRadioGroup;
    Pump4DirectionRG7: TRadioGroup;
    Pump4GB1: TGroupBox;
    Pump4GB2: TGroupBox;
    Pump4GB3: TGroupBox;
    Pump4GB4: TGroupBox;
    Pump4GB5: TGroupBox;
    Pump4GB6: TGroupBox;
    Pump4GB7: TGroupBox;
    Pump4OnOffCB1: TCheckBox;
    Pump4OnOffCB2: TCheckBox;
    Pump4OnOffCB3: TCheckBox;
    Pump4OnOffCB4: TCheckBox;
    Pump4OnOffCB5: TCheckBox;
    Pump4OnOffCB6: TCheckBox;
    Pump4OnOffCB7: TCheckBox;
    Pump4VoltageFS1: TFloatSpinEdit;
    Pump4VoltageFS2: TFloatSpinEdit;
    Pump4VoltageFS3: TFloatSpinEdit;
    Pump4VoltageFS4: TFloatSpinEdit;
    Pump4VoltageFS5: TFloatSpinEdit;
    Pump4VoltageFS6: TFloatSpinEdit;
    Pump4VoltageFS7: TFloatSpinEdit;
    RepeatL: TLabel;
    RepeatOutputLE: TLabeledEdit;
    RepeatPC: TPageControl;
    RepeatSE: TSpinEdit;
    RunBB: TBitBtn;
    RunEndlessCB: TCheckBox;
    RunFreeBB: TBitBtn;
    Step1TS: TTabSheet;
    Step1UseCB: TCheckBox;
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
    Step7TS: TTabSheet;
    Step7UseCB: TCheckBox;
    StopBB: TBitBtn;
    ConnectionMI: TMenuItem;
    MiscellaneousMI: TMenuItem;
    ConnComPortLE: TLabeledEdit;
    MainMenu: TMainMenu;
    OverallTimer: TTimer;
    RepeatTimer: TTimer;
    Unit1RBh: TRadioButton;
    Unit2RBh: TRadioButton;
    Unit3RBh: TRadioButton;
    Unit4RBh: TRadioButton;
    Unit5RBh: TRadioButton;
    Unit6RBh: TRadioButton;
    Unit7RBh: TRadioButton;
    Unit1RBmin: TRadioButton;
    Unit2RBmin: TRadioButton;
    Unit3RBmin: TRadioButton;
    Unit4RBmin: TRadioButton;
    Unit5RBmin: TRadioButton;
    Unit6RBmin: TRadioButton;
    Unit7RBmin: TRadioButton;
    Unit1RBs: TRadioButton;
    Unit2RBs: TRadioButton;
    Unit3RBs: TRadioButton;
    Unit4RBs: TRadioButton;
    Unit5RBs: TRadioButton;
    Unit6RBs: TRadioButton;
    Unit7RBs: TRadioButton;
    procedure AboutMIClick(Sender: TObject);
    procedure ConnectionMIClick(Sender: TObject);
    procedure DutyCycleXFSEChange(Sender: TObject);
    procedure FirmwareUpdateMIClick(Sender: TObject);
    procedure FormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure GenerateCommandBBClick(Sender: TObject);
    procedure GetFirmwareVersionMIClick(Sender: TObject);
    procedure LiveModeCBChange(Sender: TObject);
    procedure LoadActionMIClick(Sender: TObject);
    procedure FirmwareResetMIClick(Sender: TObject);
    procedure PumpVoltageFSChange(Sender: TObject);
    procedure PumpGBDblClick(Sender: TObject);
    procedure PumpOnOffCBLoopChange(Sender: TObject);
    procedure RepeatPCChange(Sender: TObject);
    procedure RunBBClick(Sender: TObject);
    procedure RunEndlessCBChange(Sender: TObject);
    procedure RunFreeBBClick(Sender: TObject);
    procedure SaveActionMIClick(Sender: TObject);
    procedure StepXUseCBChange(Sender: TObject);
    procedure StepTimer1Finished(Sender: TObject);
    procedure StepTimerXFinished(Sender: TObject);
    procedure StepTimerLastFinished(Sender: TObject);
    procedure StopBBClick(Sender: TObject);
    procedure StopTimerFinished;
    procedure OverallTimerFinished;
    procedure RepeatTimerFinished;
  private

  public
    procedure FirmwareUpdate(forced: Boolean);
    function GenerateCommand(out command: string): Boolean;
    procedure RunImmediate;
    function ParseCommand(command: string): Boolean;
    function DialogWithPos(const Message: string; DialogType: TMsgDlgType;
              Buttons: TMsgDlgButtons; AX, AY: Integer): TModalResult;
    function OpenFile(InputName: string): Boolean;
    function SaveHandling(InName: string; const Calculation: Boolean): string;

  end;

var
  MainForm : TMainForm;
  Version : string = '2.67';
  FirmwareVersion : string = 'unknown';
  RequiredFirmwareVersion : float = 1.3;
  ser: TBlockSerial;
  CurrentRepeat : integer;
  GlobalTime : Double = 0;
  GlobalRepeatTime : Double = 0;
  RepeatTime : Double = 0;
  HaveSerial : Boolean = False;
  InName : string = ''; // name of load file
  DropfileName : string = ''; // name of dropped file
  StepNum : integer = 7; // number of steps
  PumpNum : integer = 4; // number of pumps

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
 MainForm.Caption:= 'JT Pump Driver ' + Version;
 DefaultFormatSettings.DecimalSeparator:= '.'; // we use English numbers
 LoadedActionFileM.Text:= 'None'; // explicitly set there because the IDE always
                                  // stores initial values with trailing LineEnding
 // load file directly if it was provided via command line
 if ParamStr(1) <> '' then
  begin
   DropfileName:= ParamStr(1);
   LoadActionMIClick(Sender);
   DropfileName:= '';
  end;
end;

procedure TMainForm.ConnectionMIClick(Sender: TObject);
// opens the connection settings dialog and opens a connections according
// to the dialog input
var
  command : string;
  Reg : TRegistry;
  i, k : integer;
  MousePointer : TPoint;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 // enable all menus because they would be disabled when formerly
 // connected to an unknown device
 GetFirmwareVersionMI.Enabled:= true;
 FirmwareUpdateMI.Enabled:= true;
 FirmwareResetMI.Enabled:= true;
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
 // if there is only one COM port, preselect it
 with SerialUSBSelectionF do
 begin
  if SerialUSBPortCB.Items.Count = 1 then
   SerialUSBPortCB.ItemIndex:= 0
  else
   SerialUSBPortCB.ItemIndex:= -1;
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
   command:= '/0I';
   for k:= 1 to PumpNum do
    command:= command + '0';
   command:= command + 'lR' + LineEnding;
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
   command:= command + '/0I';
   for k:= 1 to PumpNum do
    command:= command + '0';
   command:= command + 'lR' + LineEnding;
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
  ser.Connect(COMPort);
  // the config must be set after the connection
  ser.config(9600, 8, 'N', SB1, False, False);

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
  command:= '/0gLM500lM500G4R' + LineEnding;
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
    GetFirmwareVersionMI.Enabled:= false;
    FirmwareUpdateMI.Enabled:= false;
    FirmwareResetMI.Enabled:= false;
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
     IndicatorPanelP.Caption:= 'Wrong device';
     IndicatorPanelP.Color:= clRed;
     ConnComPortLE.Color:= clRed;
     exit;
    end;
    // JT Pump Driver requires a certain firmware version
    if FirmwareVersion = 'unknown' then
    begin
     MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
      + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
      + LineEnding + 'You have an unknown old firmware version installed.'
      + LineEnding + 'Please use the menu Miscellaneous -> Firmware Update.',
      mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
     exit;
    end
    else if StrToFloat(FirmwareVersion) < RequiredFirmwareVersion then
    begin
     MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
      + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
      + LineEnding + 'You have firmware version ' + FirmwareVersion + ' installed.'
      + LineEnding + 'Please use the menu Miscellaneous -> Firmware Update.',
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

procedure TMainForm.FirmwareUpdateMIClick(Sender: TObject);
begin
 FirmwareUpdate(false); // no forced update
end;

procedure TMainForm.FirmwareResetMIClick(Sender: TObject);
begin
 FirmwareUpdate(true); // forced update
end;

procedure TMainForm.FirmwareUpdate(forced: Boolean);
// flashes the program cache in the TinyZero controller with a new firmware
var
 COMListStart, COMListBoot : TStringList;
 Reg : TRegistry;
 BootCOM, BossacOut, FirmwareFile, bossacPath, command : string;
 i, YesNo : integer;
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
   + LineEnding + 'No firmware update possible.',
   mtError, [mbOK], 0 , MousePointer.X, MousePointer.Y);
  exit;
 end;

 // basic info
 MessageDlgPos('Specify now the COM port of the pump driver' + LineEnding
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
   ser.Connect(COMPort);
   ser.config(9600, 8, 'N', SB1, False, False);
   if not forced then
   begin
    // send now a simple command to get the firmware version back
    // blink 1 time
    command:= '/0LM500lM500R' + LineEnding;
    ser.SendString(command);
    // receive firmware version
    FirmwareVersion:= ser.RecvPacket(1000);
   end;
  finally
   if ser.LastError <> 0 then
   begin
    MessageDlgPos(COMPort + ' error: ' + ser.LastErrorDesc,
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    ConnComPortLE.Color:= clRed;
    IndicatorPanelP.Caption:= 'Connection error';
    IndicatorPanelP.Color:= clRed;
    if ser.LastError = 9997 then
    begin
     exited:= true;
     exit; // we cannot close socket or free when the connection timed out
    end;
    MessageDlgPos('The selected COM port is not one of a pump driver!',
     mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    ser.CloseSocket;
    ser.Free;
    HaveSerial:= False;
    exited:= true;
    exit;
   end;
   // in case of successful data exchange but not a pump driver
   if (Pos('eceived command:', FirmwareVersion) = 0) and (not forced) then
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
  // allow the user to flush the device anyway
  if forced then
  begin
   with CreateMessageDialog // MessageDlg
       ('Do you really want to force the firmware update anyway on your own risk (guarantee void)?'
        + LineEnding +
        'NOTE: Assure that then no other device is connected to a COM port!',
             mtWarning, [mbYes]+[mbNo]) do
   try
    ActiveControl:= FindComponent('NO') as TWinControl;
    YesNo:= ShowModal;
   finally
    Free;
   end;
   if YesNo = mrNo then // if No
    exit;
  end;
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

  // open new connection with 1200 baud,
  // this rate is mandatory to set the Arduino into boot mode
  try
   ser:= TBlockSerial.Create;
   ser.DeadlockTimeout:= 10000; //set timeout to 10 s
   ser.Connect(COMPort);
   ser.config(1200, 8, 'N', SB1, False, False);
  except
   MessageDlgPos('Error: A connection to ' + COMPort + ' cannot be opened.',
    mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
   exit;
  end;
  // since the process will need more than 10 seconds, show a note
  // at the position where the initial info message was output
  if forced then
  begin
   FirmwareNote.Text:= 'Firmware reset is in progress';
   FirmwareNote.Title:= 'Firmware reset';
  end
  else
  begin
   FirmwareNote.Text:= 'Firmware update is in progress';
   FirmwareNote.Title:= 'Firmware update';
  end;
  FirmwareNote.ShowAtPos(MousePointer.X, MousePointer.Y);
  Application.ProcessMessages; // to show the note before going to delay
  Delay(2000); // some time until the connection is in every case established
  Application.ProcessMessages; // keep the program alive to Windows
  // Close the connection
  try
   ser.CloseSocket;
   ser.Free;
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
   ser.Connect(BootCOM);
   ser.config(9600, 8, 'N', SB1, False, False);
   // send now a simple command to get the firmware version back
   // blink 1 time
   command:= '/0LM500lM500R' + LineEnding;
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
      + LineEnding + 'old version that is not supported by JT Pump Driver '
      + Version + '.' + LineEnding + 'JT Pump Driver ' + Version
      + ' requires firmware version ' + FloatToStr(RequiredFirmwareVersion)
      + ' or newer!' , mtInformation, [mbOK], 0, MousePointer.X, MousePointer.Y);
     IndicatorPanelP.Caption:= 'Firmware too old';
     IndicatorPanelP.Color:= clRed;
     exit;
    end
   else
   begin
    MessageDlgPos('The firmware could not be updated sucessfully.' + LineEnding
     + 'Here is the full output of the failed firmware update attempt:' + LineEnding
     + BossacOut, mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
    exit;
   end;
   if StrToFloat(FirmwareVersion) < RequiredFirmwareVersion then
   begin
    MessageDlgPos('JT Pump Driver ' + Version + ' requires firmware version '
     + FloatToStr(RequiredFirmwareVersion) + ' or newer!'
     + LineEnding + 'You have firmware version ' + FirmwareVersion + ' installed.'
     + LineEnding + 'Please use the menu Miscellaneous -> Firmware Update.',
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

procedure TMainForm.GetFirmwareVersionMIClick(Sender: TObject);
// reads the forware version from the board
var
 StringFound : integer;
 MousePointer : TPoint;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 StringFound:= Pos('COM', ConnComPortLE.Text);
 if (StringFound = 0) or (ConnComPortLE.Color = clRed) then // connect first
  ConnectionMIClick(Sender);
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

procedure TMainForm.AboutMIClick(Sender: TObject);
begin
 // set version number
 AboutFormF.VersionNumber.Caption:= Version;
 // open the dialog
 AboutFormF.ShowModal;
end;

procedure TMainForm.LiveModeCBChange(Sender: TObject);
// changes the program to transmit every pump settings change immediately
var
j : integer;
begin
 if LiveModeCB.Checked then
 begin
  // make all steps invisible and rename step 1
  for j:= 2 to StepNum do
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).TabVisible:= false;
  RunSettingsGB.Enabled:= false;
  RunFreeBB.Enabled:= false;
  Step1TS.Caption:= 'Live';
  // set that run until stop pressed
  RunEndlessCB.Checked:= true;
  // en/disable pump setting elements
  PumpOnOffCBLoopChange(Sender);
 end
 else
 begin
  RunSettingsGB.Enabled:= true;
  RunFreeBB.Enabled:= true;
  // rename step 1 back and show step 2
  Step1TS.Caption:= 'Step 1';
  Step2TS.TabVisible:= true;
  RunEndlessCB.Checked:= false;
  // en/disable pump setting elements
  PumpOnOffCBLoopChange(Sender);
 end;

end;

procedure TMainForm.FormClose(Sender: TObject);
// Close serial connection
var
 command : string;
 k : integer;
begin
 // stop the pumps and blink 3 times
 command:= '/0I';
 for k:= 1 to PumpNum do
  command:= command + '0';
 command:= command + 'gLM500lM500G2R' + LineEnding;
 if HaveSerial then // the user set a COM port
  try
   ser.SendString(command);
   // purposely don't emit an error that the serial connection is no longer
   // since the program is closed anyway
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
 i, j : integer;
begin
 GenerateCommand(command);
 CommandM.Text:= command;
 // the button re-enables editing after an action file was loaded
 // enable all setting possibilities
 LiveModeCB.Enabled:= True;
 RunSettingsGB.Enabled:= not LiveModeCB.Checked;
 for j:= 1 to StepNum do
 begin
  (FindComponent('Step' + IntToStr(j) + 'TS')
   as TTabSheet).Enabled:= True;
  // enable tooltips for pump name
  for i:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(i) + 'GB' + IntToStr(j))
    as TGroupBox).ShowHint:= True;
 end;
 // view tab after last used step
 for j:= 2 to StepNum-1 do
 begin
  if (FindComponent('Step' + IntToStr(j) + 'UseCB')
      as TCheckBox).Checked = True then
   (FindComponent('Step' + IntToStr(j+1) + 'TS')
    as TTabSheet).TabVisible:= True
  else
   break;
 end;
 // tab 2 must always be visible except when in live mode
 if not LiveModeCB.Checked then
  Step2TS.TabVisible:= True;
 // loaded settings are no longer valid
 LoadedActionFileM.Text:= 'None';
 LoadedActionFileM.Color:= clDefault;
 LoadedActionFileM.Hint:= 'No action file loaded';
 // enable saving
 SaveActionMI.Enabled:= True;
end;

function TMainForm.GenerateCommand(out command: string): Boolean;
// collect data an generate command to be sent
var
 voltage, jStr : string;
 SOrder : array of char;
 timeFactor, DutyRepeats, XTime, OnTime, OffTime, j, k : integer;
 timeCalc, timeOut, timeStep : Double;
 HaveS : Boolean = False;
begin
 timeFactor:= 1; timeCalc:= 0;
 command:= ''; voltage:= '';
 if not LiveModeCB.Checked then
 begin
  IndicatorPanelP.Color:= clDefault;
  IndicatorPanelP.Caption:= '';
 end;
 IndicatorPanelP.Hint:= '';
 setLength(SOrder, PumpNum);

 // address
 command:= '/0';
 // turn on LED
 command:= command + 'L';

 if (StrToInt(RepeatSE.Text) > 0) or (RunEndlessCB.Checked) then
  // begin loop flag
  command:= command + 'g';

 // step through all tabs
 for j:= 1 to StepNum do
 begin
  // initialize
  for k:= 0 to PumpNum-1 do
   SOrder[k]:= '0';
  jStr:= IntToStr(j);
  if (FindComponent('Step' + jStr + 'UseCB') as TCheckBox).Checked
   and (FindComponent('Step' + jStr + 'TS') as TTabSheet).TabVisible then
  begin
   // speed and direction flag
   if (FindComponent('Pump1OnOffCB' + jStr)
        as TCheckBox).Checked
    or (FindComponent('Pump2OnOffCB' + jStr)
        as TCheckBox).Checked
    or (FindComponent('Pump3OnOffCB' + jStr)
        as TCheckBox).Checked
    or (FindComponent('Pump4OnOffCB' + jStr)
        as TCheckBox).Checked
    then
    begin
     // first check the duty cycle, if it is not 100 we need an on-off loop
     if (FindComponent('DutyCycle' + jStr + 'FSE')
         as TFloatSpinEdit).Value < 100 then
      command:= command + 'g';
     // syntax ist: Sxyyy, x = pump number, y = speed
     command:= command + 'S';
     HaveS:= True;
    end
    else
     HaveS:= False;
    // voltage, only write if pump is active
   if (FindComponent('Pump1OnOffCB' + jStr) as TCheckBox).Checked then
   begin
    SOrder[0]:= '1';
    command:= command + '1';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(
     (FindComponent('Pump1VoltageFS' + jStr)
      as TFloatSpinEdit).Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (FindComponent('Pump2OnOffCB' + jStr) as TCheckBox).Checked then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '2'
    else
     SOrder[1]:= '2';
    command:= command + '2';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(
     (FindComponent('Pump2VoltageFS' + jStr)
      as TFloatSpinEdit).Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (FindComponent('Pump3OnOffCB' + jStr) as TCheckBox).Checked then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '3'
    else if SOrder[1] = '0' then
     SOrder[1]:= '3'
    else
     SOrder[2]:= '3';
    command:= command + '3';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(
     (FindComponent('Pump3VoltageFS' + jStr)
      as TFloatSpinEdit).Value / 3.3 * 999));
    // we need to write always 3 characters
    case length(voltage) of
     2 : voltage:= '0' + voltage;
     1 : voltage:= '00' + voltage;
    end;
    command:= command + voltage;
   end;
   if (FindComponent('Pump4OnOffCB' + jStr) as TCheckBox).Checked then
   begin
    if SOrder[0] = '0' then
     SOrder[0]:= '4'
    else if SOrder[1] = '0' then
     SOrder[1]:= '4'
    else if SOrder[2] = '0' then
     SOrder[2]:= '4'
    else
     SOrder[3]:= '4';
    command:= command + '4';
    // 3.3 V is the maximum
    voltage:= FloatToStr(ceil(
     (FindComponent('Pump4VoltageFS' + jStr)
      as TFloatSpinEdit).Value / 3.3 * 999));
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
    command:= command + 'D';
    for k:= 1 to PumpNum do
    begin
     if SOrder[k-1] <> '0' then
      command:= command +
       IntToStr((FindComponent('Pump' + SOrder[k-1] + 'DirectionRG' + jStr)
        as TRadioGroup).ItemIndex);
    end;
   end;
   // action
   command:= command + 'I';
   for k:= 1 to PumpNum do
    command:= command +
     BoolToStr((FindComponent('Pump' + IntToStr(k) + 'OnOffCB' + jStr)
        as TCheckBox).Checked, '1', '0');
   // calculate action time in ms
   timeStep:= 0;
   if (FindComponent('Unit' + jStr + 'RBs')
       as TRadioButton).Checked then
    timeFactor:= 1000
   else if (FindComponent('Unit' + jStr + 'RBmin')
            as TRadioButton).Checked then
    timeFactor:= 1000 * 60
   else if (FindComponent('Unit' + jStr + 'RBh')
            as TRadioButton).Checked then
    timeFactor:= 1000 * 3600;

   // if we have not 100% duty cycle we need 2 steps
   if ((FindComponent('DutyCycle' + jStr + 'FSE')
      as TFloatSpinEdit).Value < 100) and HaveS then
   begin
    if ((FindComponent('DutyCycle' + jStr + 'FSE')
      as TFloatSpinEdit).Value / 100) >= 0.05 then
     XTime:= 1000 // base time is 1s
    else // calculate a base time so that the OnTime is 50 ms
     XTime:= round(0.05 / ((FindComponent('DutyCycle' + jStr + 'FSE')
      as TFloatSpinEdit).Value / 100) * 1000);
    OnTime:= round((FindComponent('DutyCycle' + jStr + 'FSE')
      as TFloatSpinEdit).Value / 100 * XTime); // time in ms
    OffTime:= XTime - OnTime;
    DutyRepeats:= round((FindComponent('RunTime' + jStr + 'FSE')
      as TFloatSpinEdit).Value * timeFactor / XTime) - 1;
    // DutyRepeats can now be -1 if time is smaller than necessary OffTime
    if DutyRepeats < 0 then
     DutyRepeats:= 0;
    command:= command + 'M' + FloatToStr(OnTime);
    command:= command + 'I';
    for k:= 1 to PumpNum do
     command:= command + '0';
    command:= command + 'M' + FloatToStr(OffTime);
    command:= command + 'G' + IntToStr(DutyRepeats);
    timeStep:= XTime * (DutyRepeats + 1);
   end
   else // output the time directly
   begin
    command:= command + 'M'
     + FloatToStr((FindComponent('RunTime' + jStr + 'FSE')
                   as TFloatSpinEdit).Value * timeFactor);
    timeStep:= (FindComponent('RunTime' + jStr + 'FSE')
                as TFloatSpinEdit).Value * timeFactor;
   end;
   timeCalc:= timeCalc + timeStep;
   // if the direction changes, wait 999 ms to protect the pumps
   // only if the next step is actually used and we have 100% duty cylce
   // only necessary if DutyCycle = 100
   if (FindComponent('DutyCycle' + jStr + 'FSE')
       as TFloatSpinEdit).Value = 100 then
   begin
    if (j < StepNum) and (FindComponent('Step' + IntToStr(j+1) + 'UseCB')
        as TCheckBox).checked then
    begin
     if ((FindComponent('Pump1OnOffCB' + jStr) as TCheckBox).Checked
       and (FindComponent('Pump1OnOffCB' + IntToStr(j+1)) as TCheckBox).Checked
       and ((FindComponent('Pump1DirectionRG' + jStr) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump1DirectionRG' + IntToStr(j+1)) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump2OnOffCB' + jStr) as TCheckBox).Checked
       and (FindComponent('Pump2OnOffCB' + IntToStr(j+1)) as TCheckBox).Checked
       and ((FindComponent('Pump2DirectionRG' + jStr) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump2DirectionRG' + IntToStr(j+1)) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump3OnOffCB' + jStr) as TCheckBox).Checked
       and (FindComponent('Pump3OnOffCB' + IntToStr(j+1)) as TCheckBox).Checked
       and ((FindComponent('Pump3DirectionRG' + jStr) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump3DirectionRG' + IntToStr(j+1)) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump4OnOffCB' + jStr) as TCheckBox).Checked
       and (FindComponent('Pump4OnOffCB' + IntToStr(j+1)) as TCheckBox).Checked
       and ((FindComponent('Pump4DirectionRG' + jStr) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump4DirectionRG' + IntToStr(j+1)) as TRadioGroup).ItemIndex))
     then
     begin
      // stop for 999 ms
      command:= command + 'I';
      for k:= 1 to PumpNum do
       command:= command + '0';
      command:= command + 'M999';
      timeStep:= timeStep + 999;
      timeCalc:= timeCalc + 999;
     end;
    end
    // next step could be step 1
    else if ((RepeatSE.Value > 0) or (RunEndlessCB.Checked)) and (j > 1) then
    begin
     if ((FindComponent('Pump1OnOffCB' + IntToStr(j-1)) as TCheckBox).Checked
       and (FindComponent('Pump1OnOffCB' + jStr) as TCheckBox).Checked
       and ((FindComponent('Pump1DirectionRG' + IntToStr(j-1)) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump1DirectionRG' + jStr) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump2OnOffCB' + IntToStr(j-1)) as TCheckBox).Checked
       and (FindComponent('Pump2OnOffCB' + jStr) as TCheckBox).Checked
       and ((FindComponent('Pump2DirectionRG' + IntToStr(j-1)) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump2DirectionRG' + jStr) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump3OnOffCB' + IntToStr(j-1)) as TCheckBox).Checked
       and (FindComponent('Pump3OnOffCB' + jStr) as TCheckBox).Checked
       and ((FindComponent('Pump3DirectionRG' + IntToStr(j-1)) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump3DirectionRG' + jStr) as TRadioGroup).ItemIndex))
      or ((FindComponent('Pump4OnOffCB' + IntToStr(j-1)) as TCheckBox).Checked
       and (FindComponent('Pump4OnOffCB' + jStr) as TCheckBox).Checked
       and ((FindComponent('Pump4DirectionRG' + IntToStr(j-1)) as TRadioGroup).ItemIndex
        <> (FindComponent('Pump4DirectionRG' + jStr) as TRadioGroup).ItemIndex))
     then
     begin
      // only output if there is no single run
      if (RepeatSE.Value > 0) or (RunEndlessCB.Checked) then
      begin
       // stop for 999 ms
       command:= command + 'I';
       for k:= 1 to PumpNum do
        command:= command + '0';
       command:= command + 'M999';
       timeStep:= timeStep + 999;
       timeCalc:= timeCalc + 999;
      end;
     end;
    end; // end if if ((RepeatSE.Value > 0)
   end; // end if DutyCycle(JStr)FSE.Value = 100

   // a timer in Lazarus or can only run for 2^31-1 milliseconds
   // the timer in the Arduino could in principle run the double time, but
   // allowing this is not worth the effort (that under all circumstances
   // unsigned 32bit int is used) and we can expect an action within 24 days
   if timeStep > 2147483646 then
   begin
    IndicatorPanelP.Color:= clRed;
    IndicatorPanelP.Caption:= 'Action Time ' + jStr + 'too long!';
    IndicatorPanelP.Hint:= 'The time for one action must not exceed 596 h.';
    result:= False;
    exit;
   end;
   // set timer interval
   (FindComponent('StepTimer' + jStr) as TTimer).Interval:= trunc(timeStep);

  end; // end if (FindComponent('Step' + jStr + 'UseCB') as TCheckBox).Checked
 end; // end for j:=1 to StepNum

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
  command:= command + 'I';
  for k:= 1 to PumpNum do
   command:= command + '0';
  command:= command + 'lR';

  // calculate the total time
  if not RunEndlessCB.Checked then
  begin
   // output time in sensible unit
   if timeCalc <= 1e6 then
   begin
    TotalTimeLE.Text:= FloatToStr(RoundTo(timeCalc /1000, -1));
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
  GlobalTime:= trunc(timeCalc);
  result:= True;
end;

procedure TMainForm.PumpOnOffCBLoopChange(Sender: TObject);
var
  i, step : integer;
begin
for step:= 1 to StepNum do
  for i:= 1 to PumpNum do
  begin
   // when in live mode the pump direction must be kept disabled when pump
   // is on and all elements must be enabled when the pump if off
   if LiveModeCB.Checked then
   begin
   (FindComponent('Pump' + IntToStr(i) + 'DirectionRG' + IntToStr(step))
     as TRadioGroup).Enabled:= not (FindComponent('Pump' + IntToStr(i) + 'OnOffCB' + IntToStr(step))
     as TCheckBox).Checked;
   (FindComponent('Pump' + IntToStr(i) + 'VoltageFS' + IntToStr(step))
     as TFloatSpinEdit).Enabled:= True;
   end
   else // outside live mode, disable all elements when pump is off
   begin
   (FindComponent('Pump' + IntToStr(i) + 'DirectionRG' + IntToStr(step))
     as TRadioGroup).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB' + IntToStr(step))
     as TCheckBox).Checked;
   (FindComponent('Pump' + IntToStr(i) + 'VoltageFS' + IntToStr(step))
     as TFloatSpinEdit).Enabled:= (FindComponent('Pump' + IntToStr(i) + 'OnOffCB' + IntToStr(step))
     as TCheckBox).Checked;
   end;
  end;
  // if in live mode send trigger command generation and sending
  if LiveModeCB.Checked and OverallTimer.Enabled then
   RunImmediate;
end;

procedure TMainForm.PumpVoltageFSChange(Sender: TObject);
begin
 // if in live mode send trigger command generation and sending
 if LiveModeCB.Checked and OverallTimer.Enabled then
  RunImmediate;
end;

procedure TMainForm.RepeatPCChange(Sender: TObject);
// set visibility of repeat tabs
var
  i : integer;
begin
  for i:= 2 to StepNum-1 do
   if (FindComponent('Step' + IntToStr(i) + 'TS')
      as TTabSheet).TabVisible = False then
    (FindComponent('Step' + IntToStr(i+1) + 'TS')
      as TTabSheet).TabVisible:= False;
  for i:= 2 to StepNum-1 do
   if ((FindComponent('Step' + IntToStr(i) + 'UseCB')
      as TCheckBox).Checked and
      (FindComponent('Step' + IntToStr(i) + 'TS')
      as TTabSheet).TabVisible) then
    (FindComponent('Step' + IntToStr(i+1) + 'TS')
      as TTabSheet).TabVisible:= True;
end;

procedure TMainForm.RunImmediate;
// execute generated command
var
  command : string;
  CommandResult : Boolean = False;
begin
 // generate command
 CommandResult:= GenerateCommand(command);
 // if GenerateCommand returns e.g. a too long time stop
 if not CommandResult then
 begin
  StopBBClick(StopBB);
  exit;
 end;
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
  command:= command + LineEnding;
  // if we have an open serial connection, execute
 if HaveSerial then
 begin
  // disable the connection menu that the user cannot close
  // the conenction while the pumps are running
  ConnectionMI.Enabled:= False;
  FirmwareUpdateMI.Enabled:= False;
  FirmwareResetMI.Enabled:= False;
  // send the command
  ser.SendString(command);
  if ser.LastError <> 0 then
  begin
   with Application do
    MessageBox(PChar(COMPort + ' error: ' + ser.LastErrorDesc), 'Error', MB_ICONERROR+MB_OK);
   ConnComPortLE.Color:= clRed;
   ConnComPortLE.Text:= 'Try to reconnect';
   IndicatorPanelP.Caption:= 'Connection failiure';
   ConnectionMI.Enabled:= True;
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

end;

procedure TMainForm.RunBBClick(Sender: TObject);
// execute generated command
var
  command, StartTime : string;
  i, j : integer;
  CommandResult : Boolean = False;
begin
  // generate command
  CommandResult:= GenerateCommand(command);
  // if GenerateCommand returns e.g. a too long time do nothing
  if not CommandResult then
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
   command:= command + LineEnding;

  // if we have an open serial connection, execute
  if HaveSerial then
  begin
   // disable the connection menu that the user cannot close
   // the conenction while the pumps are running
   ConnectionMI.Enabled:= False;
   FirmwareUpdateMI.Enabled:= False;
   FirmwareResetMI.Enabled:= False;
   // send the command
   ser.SendString(command);
   if ser.LastError <> 0 then
   begin
    with Application do
     MessageBox(PChar(COMPort + ' error: ' + ser.LastErrorDesc), 'Error', MB_ICONERROR+MB_OK);
    ConnComPortLE.Color:= clRed;
    ConnComPortLE.Text:= 'Try to reconnect';
    IndicatorPanelP.Caption:= 'Connection failiure';
    ConnectionMI.Enabled:= True;
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
  LiveModeCB.Enabled:= False;
  // not the pump settings when in live mode
  if not LiveModeCB.Checked then
  begin
   for j:= 1 to StepNum do
   begin
    (FindComponent('Step' + IntToStr(j) + 'TS')
     as TTabSheet).Enabled:= False;
    // disable tooltips for pump name
    for i:= 1 to PumpNum do
     (FindComponent('Pump' + IntToStr(i) + 'GB' + IntToStr(j))
      as TGroupBox).ShowHint:= False;
   end;
  end;
  RepeatOutputLE.Visible:= False;
  IndicatorPanelP.Caption:= 'Pumps are running';
  IndicatorPanelP.Color:= clRed;
  // set timers
  if (StrToInt(RepeatSE.Text) > 0) and (RunEndlessCB.Checked = False) then
  begin
   RepeatOutputLE.Visible:= True;
   RepeatTime:= trunc(GlobalTime / (StrToFloat(RepeatSE.Text) + 1));
   if RepeatTime < 86400000 then // if less than one day
    RepeatTimer.Interval:= trunc(RepeatTime)
   else // to restart timer every day
    RepeatTimer.Interval:= 86400000;
   RepeatTimer.Enabled:= True;
   CurrentRepeat:= 0;
   RepeatOutputLE.Text:= '0';
   // set time that will later be evaluated when the timer ends
  GlobalRepeatTime:= RepeatTime;
  end;
  // delete finish time
  FinishTimeLE.Text:= '';
  // output start time
  startTime := FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
  StartTimeLE.Text:= startTime;

  // start OverallTimer to indicate running state
  if GlobalTime < 86400000 then // if less than one day
   OverallTimer.Interval:= trunc(GlobalTime)
  else // to restart timer every day
   OverallTimer.Interval:= 86400000;
  OverallTimer.Enabled:= True;
  // show first tab and start its timer
  RepeatPC.ActivePage:= Step1TS;
  StepTimer1.Enabled:= true;
  // do not show unused steps
  for j:= 2 to StepNum do
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
 if GlobalRepeatTime > 86400000 then
 begin
  GlobalRepeatTime:= GlobalRepeatTime - 4000;
  if GlobalRepeatTime < 86400000 then // if less than one day
   RepeatTimer.Interval:= trunc(GlobalRepeatTime)
  else // to restart timer every day
   RepeatTimer.Interval:= 86400000;
  RepeatTimer.Enabled:= True;
  exit;
 end;
 if StrToInt(RepeatSE.Text) > StrToInt(RepeatOutputLE.Text) then
 begin
  inc(CurrentRepeat);
  GlobalRepeatTime:= RepeatTime;
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
  i, j : integer;
begin
 // if one day has passed but the pumps must run longer
 if GlobalTime > 86400000 then
 begin
  GlobalTime:= GlobalTime - 86400000;
  if GlobalTime < 86400000 then // if less than one day
   OverallTimer.Interval:= trunc(GlobalTime)
  else // to restart timer every day
   OverallTimer.Interval:= 86400000;
  OverallTimer.Enabled:= True;
  exit;
 end;
 // output finish time
 finishTime := FormatDateTime('dd.mm.yyyy, hh:nn:ss', now);
 FinishTimeLE.Text:= finishTime;
 OverallTimer.Enabled:= False;
 ConnectionMI.Enabled:= True;
 FirmwareUpdateMI.Enabled:= True;
 FirmwareResetMI.Enabled:= True;
 RunBB.Caption:= 'Run Pumps';
 RunBB.Enabled:= True;
 RunFreeBB.Enabled:= True;
 GenerateCommandBB.Enabled:= True;
 IndicatorPanelP.Caption:= 'Run finished';
 IndicatorPanelP.Color:= clInfoBk;
 RepeatOutputLE.Visible:= False;
 // stop all timers
 for j:= 1 to StepNum do
  (FindComponent('StepTimer' + IntToStr(j))
   as TTimer).Enabled:= False;
 // enable all setting possibilities only if no file is loaded
 if (LoadedActionFileM.Text = 'None')
  or (LoadedActionFileM.Text = 'Free Pumps') then
 begin
  LiveModeCB.Enabled:= True;
  RunSettingsGB.Enabled:= not LiveModeCB.Checked;
  for j:= 1 to StepNum do
  begin
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).Enabled:= True;
   // enable tooltips for pump name
   for i:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(i) + 'GB' + IntToStr(j))
    as TGroupBox).ShowHint:= True;
  end;
  // view tab after last used step
  for j:= 2 to StepNum-1 do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
       as TCheckBox).Checked = True then
    (FindComponent('Step' + IntToStr(j+1) + 'TS')
     as TTabSheet).TabVisible:= True
  else
   break;
  end;
  // tab 2 must always be visible except when in live mode
  if not LiveModeCB.Checked then
   Step2TS.TabVisible:= True;
 end;
 // after a Free Pums run we must reset the LoadedActionFileM
 if LoadedActionFileM.Text = 'Free Pumps' then
 begin
  LoadedActionFileM.Text:= 'None';
  LoadedActionFileM.Color:= clDefault;
  LoadedActionFileM.Hint:= 'No action file loaded';
 end;
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

procedure TMainForm.StepTimerXFinished(Sender: TObject);
var
 Step : integer;
 SenderName : string;
begin
 SenderName:= (Sender as TComponent).Name;
 // SenderName is in the form "StepTimerX" and we need the X
 // so get the 10th character of the name
 Step:= StrToInt(Copy(SenderName, 10, 1));
 (FindComponent('StepTimer' + IntToStr(Step))
        as TTimer).Enabled:= False;
 // if there is a step+1, start its timer and show its tab
 if (FindComponent('Step' + IntToStr(Step+1) + 'UseCB')
        as TCheckBox).checked then
 begin
  // the interval is calculated in TMainForm.GenerateCommand
  (FindComponent('StepTimer' + IntToStr(Step+1))
        as TTimer).Enabled:= True;
  RepeatPC.ActivePage:= (FindComponent('StepTimer' + IntToStr(Step+1) + 'TS')
        as TTabSheet);
 end
 else // there might be a repeat
 begin
  // switch to step 1
  StepTimer1.Enabled:= True;
  RepeatPC.ActivePage:= Step1TS;
 end;
end;

procedure TMainForm.StepTimerLastFinished(Sender: TObject);
begin
 (FindComponent('StepTimer' + IntToStr(StepNum))
        as TTimer).Enabled:= False;
 // switch to step 1
 StepTimer1.Enabled:= True;
 RepeatPC.ActivePage:= Step1TS;
end;

procedure TMainForm.StopBBClick(Sender: TObject);
// stop all pumps
var
 command, stopTime : string;
 i, j, k : integer;
begin
 // re-enable the connection menu in every case
 ConnectionMI.Enabled:= True;
 FirmwareUpdateMI.Enabled:= True;
 FirmwareResetMI.Enabled:= True;
 command:= '';
 // address
 command:= '/0';
 // disable all pumps
 command:= command + 'I';
 for k:= 1 to PumpNum do
  command:= command + '0';
 // execute flag and turn off LED
 command:= command + 'lR';
 // execute
 CommandM.Text:= command;
 command:= command + LineEnding;
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
   ConnectionMI.Enabled:= True;
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
 // stop all timers
 for j:= 1 to StepNum do
  (FindComponent('StepTimer' + IntToStr(j))
   as TTimer).Enabled:= False;
 // enable all setting possibilities only if no file is loaded
 if (LoadedActionFileM.Text = 'None')
  or (LoadedActionFileM.Text = 'Free Pumps') then
 begin
  LiveModeCB.Enabled:= True;
  RunSettingsGB.Enabled:= not LiveModeCB.Checked;
  for j:= 1 to StepNum do
  begin
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).Enabled:= True;
   // enable tooltips for pump name
   for i:= 1 to PumpNum do
    (FindComponent('Pump' + IntToStr(i) + 'GB' + IntToStr(j))
     as TGroupBox).ShowHint:= True;
  end;
  // view tab after last used step
  for j:= 2 to StepNum-1 do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
       as TCheckBox).Checked = True then
    (FindComponent('Step' + IntToStr(j+1) + 'TS')
     as TTabSheet).TabVisible:= True
   else
    break;
  end;
  // tab 2 must always be visible except when in live mode
  if not LiveModeCB.Checked then
   Step2TS.TabVisible:= True;
 end;
 // after a Free Pums run we must reset the LoadedActionFileM
 if LoadedActionFileM.Text = 'Free Pumps' then
 begin
  LoadedActionFileM.Text:= 'None';
  LoadedActionFileM.Color:= clDefault;
  LoadedActionFileM.Hint:= 'No action file loaded';
 end;
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
// this is like loading a *.PDAction file, therefore use the file load routines
var
 j : integer;
 command : string;
 ParseSuccess : Boolean;
begin
 LoadedActionFileM.Text:= 'Free Pumps';
 LoadedActionFileM.Color:= clInfoBK;
 LoadedActionFileM.Hint:= 'Free Pumps';
 // input the action as command
 // '/0LgS1999299939994999D0000I1111M30000I0000M999
 //      S1999299939994999D1111I1111M30000I0000M999G9I0000lR'
 command:= '/0Lg';
 command:= command + 'S1999299939994999D0000I1111M30000';
 command:= command + 'I0000M999';
 command:= command + 'S1999299939994999D1111I1111M30000';
 command:= command + 'I0000M999G9I0000lR';

 CommandM.Text:= command;
 // parse the command
 ParseSuccess:= ParseCommand(command);
 if ParseSuccess then
  // call command generation just to get the action time calculated
  GenerateCommand(command);
 // disable all setting possibilities
 RunSettingsGB.Enabled:= False;
 LiveModeCB.Enabled:= False;
 for j:= 1 to StepNum do
  (FindComponent('Step' + IntToStr(j) + 'TS')
   as TTabSheet).Enabled:= False;
 RepeatOutputLE.Visible:= False;
 // do not show unused steps
 for j:= 2 to StepNum do
 begin
  if (FindComponent('Step' + IntToStr(j) + 'UseCB')
      as TCheckBox).Checked = False then
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).TabVisible:= False;
 end;
 // disable saving, will be re-enabled by GererateCommand
 SaveActionMI.Enabled:= False;
 // show step 1
 RepeatPC.ActivePage:= Step1TS;
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
   // disable runtime only, if there is only one step or in live mode
   if (not Step2UseCB.Checked) or LiveModeCB.Checked then
    ActionTime1GB.Enabled:= False;
  end
  else
  begin
   RepeatSE.Enabled:= True;
   if not Step2UseCB.Checked then
    ActionTime1GB.Enabled:= True;
  end;
end;

procedure TMainForm.StepXUseCBChange(Sender: TObject);
var
 Step, j : integer;
 SenderName : string;
begin
 SenderName:= (Sender as TComponent).Name;
 // SenderName is in the form "StepxTS" and we need the x
 // so get the 5th character of the name
 Step:= StrToInt(Copy(SenderName, 5, 1));
 if (FindComponent('Step' + IntToStr(Step) + 'UseCB') as TCheckBox).Checked then
 begin
  if Step <> StepNum then
   (FindComponent('Step' + IntToStr(Step+1) + 'TS') as TTabSheet).TabVisible:= True;
  (FindComponent('ActionTime' + IntToStr(Step) + 'GB') as TGroupBox).Enabled:= True;
  (FindComponent('DutyCycle' + IntToStr(Step) + 'GB') as TGroupBox).Enabled:= True;
  for j:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(j) + 'GB' + IntToStr(Step)) as TGroupBox).Enabled:= True;
  // in case it was disabled on unchecking step 2
  if (Step = 2) and (not ActionTime1GB.Enabled) then
   ActionTime1GB.Enabled:= True;
 end
 else
 begin
  if Step <> StepNum then
   (FindComponent('Step' + IntToStr(Step+1) + 'TS') as TTabSheet).TabVisible:= False;
  (FindComponent('ActionTime' + IntToStr(Step) + 'GB') as TGroupBox).Enabled:= False;
  (FindComponent('DutyCycle' + IntToStr(Step) + 'GB') as TGroupBox).Enabled:= False;
  for j:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(j) + 'GB' + IntToStr(Step)) as TGroupBox).Enabled:= False;
  // if there is only one step and endless repeat disable time settings
  if (Step = 2) and (RunEndlessCB.Checked) then
   ActionTime1GB.Enabled:= False;
 end;
 RepeatPCChange(Sender);
end;

procedure TMainForm.DutyCycleXFSEChange(Sender: TObject);
var
 DutyTime, StepTime : Double;
 j, Step : integer;
 SenderName : string;
begin
 SenderName:= (Sender as TComponent).Name;
 // SenderName is in the form "DutyCyclexFSE" and we need the x
 // so get the 10th character of the name
 Step:= StrToInt(Copy(SenderName, 10, 1));
 // reset increment to 1. If this is not sufficent,
 // it will be reset later in this procedure
 (FindComponent('RunTime' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Increment:= 1;
 // if the duty cycle is not 100% we must require 1.1 V for the pumps
 // otherwise the voltage would be to low to start a short movement
 if ((FindComponent('DutyCycle' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Value < 100) then
  for j:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS' + IntToStr(Step))
      as TFloatSpinEdit).MinValue:= 1.1
 else
  for j:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(j) + 'VoltageFS' + IntToStr(Step))
      as TFloatSpinEdit).MinValue:= 0.1;
 // calculate necessary time increment
 if ((FindComponent('DutyCycle' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Value / 100) >= 0.05 then
  DutyTime:= 1 // base time is 1s
 else // calculate a base time so that the OnTime is 50 ms
  DutyTime:= 0.05 / ((FindComponent('DutyCycle' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Value / 100);
 // if the unit is s, we can also set a new increment
 if (FindComponent('Unit' + IntToStr(Step) + 'RBs')
        as TRadioButton).Checked then
  (FindComponent('RunTime' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Increment:= round(DutyTime);
 // the set time might be smaller than necessary
 StepTime:= 1; // 1s
 if (FindComponent('Unit' + IntToStr(Step) + 'RBmin')
        as TRadioButton).Checked then
    StepTime:= 60
 else if (FindComponent('Unit' + IntToStr(Step) + 'RBh')
        as TRadioButton).Checked then
    StepTime:= 3600;
 StepTime:= (FindComponent('RunTime' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Value * StepTime; // time in s
 if StepTime < DutyTime then
  // the maximal DutyTime is 50 s, thus the unit is already s
  (FindComponent('RunTime' + IntToStr(Step) + 'FSE')
        as TFloatSpinEdit).Value:= DutyTime;

 // if in live mode send trigger command generation and sending
 if LiveModeCB.Checked and OverallTimer.Enabled then
  RunImmediate;
end;

procedure TMainForm.PumpGBDblClick(Sender: TObject);
var
 j, Pump : integer;
 SenderName : string;
begin
 SenderName:= (Sender as TComponent).Name;
 // SenderName is in the form "PumpxGBy" and we need the x
 // so get the 5th character of the name
 Pump:= StrToInt(Copy(SenderName, 5, 1));
 // show in dialog always the name from the first step
 PumpNameSettingF.PumpNameE.Text:=
   (FindComponent('Pump' + IntToStr(Pump) + 'GB1') as TGroupBox).Caption;
 // open connection dialog
 PumpNameSettingF.ShowModal;
 if PumpNameSettingF.ModalResult = mrCancel then
  exit
 else
  for j:= 1 to StepNum do
   (FindComponent('Pump' + IntToStr(Pump) + 'GB' + IntToStr(j))
    as TGroupBox).Caption:= PumpNameSettingF.PumpNameE.Text;
end;

// opening --------------------------------------------------------------------

procedure TMainForm.FormDropFiles(Sender: TObject;
  const FileNames: array of String);
begin
 DropfileName:= FileNames[0];
 LoadActionMIClick(Sender);
 DropfileName:= '';
end;

procedure TMainForm.LoadActionMIClick(Sender: TObject);
var
 FileSuccess : Boolean = false;
 ParseSuccess : Boolean = false;
 MousePointer : TPoint;
 command, DummyString : string;
 i, j : integer;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 if DropFileName <> '' then // a file was dropped into the main window
  FileSuccess:= OpenFile(DropFileName)
 else
 begin
  OpenDialog.InitialDir:= '';
  OpenDialog.FileName:= '';
  if OpenDialog.Execute then
   FileSuccess:= OpenFile(OpenDialog.FileName)
  else
   exit; // user aborted the loading
 end;
 if not FileSuccess then
  MessageDlgPos('Error while attempting to open file',
   mtError, [mbOK], 0, MousePointer.X, MousePointer.Y)
 else
 begin
  // an action file is never live mode
  if LiveModeCB.Checked then
   LiveModeCB.Checked:= False;
  // make all steps visible because they might be invisible due to a prior loading
  for j:= 2 to StepNum do
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).TabVisible:= True;
  if DropFileName <> '' then
   InName:= DropFileName
  else
   InName:= OpenDialog.FileName;
  SaveDialog.FileName:= ''; // will be re-set in TMainForm.SaveHandling
  // display file name without suffix
  DummyString:= ExtractFileName(InName);
  SetLength(DummyString, Length(DummyString) - 9);
  LoadedActionFileM.Text:= DummyString;
  LoadedActionFileM.Color:= clActiveCaption;
  // sometimes the file name is too long to fit into the widget, thus show it as tooltip
  LoadedActionFileM.Hint:= DummyString;
  command:= CommandM.Text;
  // parse the command
  ParseSuccess:= ParseCommand(command);
  if ParseSuccess then
   // call command generation just to get the action time calculated
   GenerateCommand(command);
  // disable all setting possibilities
  RunSettingsGB.Enabled:= False;
  LiveModeCB.Enabled:= False;
  for j:= 1 to StepNum do
  begin
   (FindComponent('Step' + IntToStr(j) + 'TS')
    as TTabSheet).Enabled:= False;
   for i:= 1 to PumpNum do
   (FindComponent('Pump' + IntToStr(i) + 'GB' + IntToStr(j))
    as TGroupBox).ShowHint:= False;
  end;
  RepeatOutputLE.Visible:= False;
  // do not show unused steps
  for j:= 2 to StepNum do
  begin
   if (FindComponent('Step' + IntToStr(j) + 'UseCB')
       as TCheckBox).Checked = False then
    (FindComponent('Step' + IntToStr(j) + 'TS')
     as TTabSheet).TabVisible:= False;
  end;
 // disable saving, will be re-enabled by GererateCommand
 SaveActionMI.Enabled:= False;
 // show step 1
 RepeatPC.ActivePage:= Step1TS;
 end; // else if not FileSuccess
end;

function TMainForm.OpenFile(InputName: string): Boolean;
// read file content
var
 OpenFileStream : TFileStream;
 LineReader : TStreamReader;
 ReadLine, ReadComplete, PumpName : string;
 j, k, Size : integer;
begin
 result:= False;
 ReadComplete:= '';
 try
  OpenFileStream:= TFileStream.Create(InputName, fmOpenRead);
  // Old files only had the command therefore read the whole file and search
  // if there is a line ending. If yes, we must set the pump names explicitly.
  Size:= OpenFileStream.Size;
  SetLength(ReadComplete, Size);
  OpenFileStream.Read(ReadComplete[1], Size);
  // we must close and subsequently reopen the stream to get ReadLine working
  OpenFileStream.Free;
  OpenFileStream:= TFileStream.Create(InputName, fmOpenRead);
  LineReader:= TStreamReader.Create(OpenFileStream);
  // read the command
  LineReader.ReadLine(ReadLine);
  CommandM.Text:= ReadLine;
  if Pos(LineEnding, ReadComplete) <> 0 then
  begin
   // read the pump names
   for k:= 1 to PumpNum do
   begin
    LineReader.ReadLine(ReadLine);
    (FindComponent('Pump' + IntToStr(k) + 'GB1')
     as TGroupBox).Caption:= ReadLine;
   end;
  end
  else
  begin
   for k:= 1 to PumpNum do
   begin
    LineReader.ReadLine(ReadLine);
    PumpName:= 'Pump' + IntToStr(k);
    (FindComponent('Pump' + IntToStr(k) + 'GB1')
     as TGroupBox).Caption:= PumpName;
   end;
  end;
  // set the pump name for all other steps
  for j:= 2 to StepNum do
   for k:= 1 to PumpNum do
   begin
    (FindComponent('Pump' + IntToStr(k) + 'GB' + IntToStr(j))
     as TGroupBox).Caption:= (FindComponent('Pump' + IntToStr(k) + 'GB1')
     as TGroupBox).Caption;
   end;
  result:= True;
 finally
  LineReader.Free;
  OpenFileStream.Free;
 end;
end;

function TMainForm.ParseCommand(command: string): Boolean;
// parses the input command
var
 address : string;
 SOrder : array of char;
 LastParsed : char = 'X';
 StepCounter, MCounter, ICounter, i, j, k, G1, p : integer;
 MousePointer : TPoint;
 StepTime, M1, M2, DutyStepTime : Double;
 Have2M : Boolean;
begin
 MousePointer:= Mouse.CursorPos; // store mouse position
 StepCounter:= 0; MCounter:= 0; ICounter:= 0;
 M1:= 0; M2:= 0; G1:= 0;
 result:= false; Have2M:= false; StepTime:= 0;
 setLength(SOrder, PumpNum);
 for k:= 0 to PumpNum-1 do
  SOrder[k]:= '0';

 // first check address
 address:= Copy(command, 0, 2);
 if address <> '/0' then
 begin
  MessageDlgPos('Error: Loaded file does not begin with ''/0''.',
   mtError, [mbOK], 0, MousePointer.X, MousePointer.Y);
  LoadedActionFileM.Text:= 'None';
  LoadedActionFileM.Color:= clDefault;
  LoadedActionFileM.Hint:= 'No action file loaded';
  CommandM.Text:= '';
  exit;
 end;

 // disable all steps, will be re-enabled while parsing
 for j:= 2 to StepNum do
  (FindComponent('Step' + IntToStr(j) + 'UseCB')
   as TCheckBox).Checked:= false;

 // set default values
 RepeatSE.Value:= 0;
 RunEndlessCB.Checked:= false;
 // set all duty cylces to 100%
 for j:= 1 to StepNum do
  (FindComponent('DutyCycle' + IntToStr(j) + 'FSE')
   as TFloatSpinEdit).Value:= 100;

 // parse the command
 for i:= 2 to Length(command) do
 begin

  // parse step 'S'
  if command[i] = 'S' then
  begin
   // syntax is "Sxyyy" with yyy/1000 * 3.3 = voltage
   inc(StepCounter);
   MCounter:= 0; // there can be several occurrences of 'M' for every step
   ICounter:= 0; // there can be several occurrences of 'I' for every step
   // initialize
   for k:= 0 to PumpNum-1 do
    SOrder[k]:= '0';
   LastParsed:= 'S';
   // determine the length
   j:= i;
   repeat
    inc(j)
   until IsDigit(command[j]) = false;
   // set the direction according to the SOrder command[i+k+1]
   k:= 1;
   while k < j-i do
   begin
    for p:= 1 to PumpNum do
     if command[i+k] = IntToStr(p) then
     begin
     (FindComponent('Pump' + IntToStr(p) + 'VoltageFS' + IntToStr(StepCounter))
      as TFloatSpinEdit).Text:= FloatToStr((StrToInt(Copy(command, i+k+1, 3))) / 999 * 3.3);
      SOrder[trunc((k-1)/4)]:= IntToStr(p)[1];
     end;
    k:= k + 4; // after number are 3 digits
   end; // end while
  end; // end parse 'S'

  // parse step 'D'
  if command[i] = 'D' then
  begin
   // D is always connected to 'S', thus use the same StepCounter
   // syntax is Dxxxx, with x = [0,1] and there might only be one x
   // this is also possible: S39991999D11, then the first 1 belongs to pump 3
   LastParsed:= 'D';
   // determine the length
   j:= i;
   repeat
    inc(j)
   until IsDigit(command[j]) = false;
   // set the direction according to the SOrder
   for k:= 1 to j-i-1 do
   begin
    if command[i+k] = '1' then
    (FindComponent('Pump' + SOrder[k-1] + 'DirectionRG' + IntToStr(StepCounter))
     as TRadioGroup).ItemIndex:= 1
    else
    (FindComponent('Pump' + SOrder[k-1] + 'DirectionRG' + IntToStr(StepCounter))
     as TRadioGroup).ItemIndex:= 0;
   end;
  end; // end parse 'D'

  // parse step 'I'
  if command[i] = 'I' then
  begin
   // syntax is Ixxxx, with x = [0,1] and there might only be one x
   // 'I' can occur twice in one step, thus use StepCounter but only
   // parse the first occurence
   // there might also be no 'S' before 'I', then we must increase StepCounter
   // this is the case if:
   //  - the last parsed command is 'G'
   //  - the last parsed command is 'M' >= 1s and the next 'M' is >= 1 s
   //  - StepCounter is -1
   if (LastParsed = 'M') and (StepTime >= 1) then
   begin
    // check if there is a next 'M' with 1s
    if (command[i+PumpNum+1] = 'M') then
    begin
     // determine the length
     j:= i + PumpNum + 1;
     repeat
      inc(j)
     until IsDigit(command[j]) = false;
     StepTime:= StrToFloat(Copy(command, i+PumpNum+2, j-i-(PumpNum+2))) / 1000;
     if (StepTime >= 1) then
     begin
      inc(StepCounter);
      ICounter:= 0;
      MCounter:= 0;
     end;
    end;
   end;
   if (StepCounter = 0)
    or ((LastParsed = 'G') and (command[i+PumpNum+2] <> 'R')) then // not if last 'I'
   begin
    inc(StepCounter);
    ICounter:= 0;
    MCounter:= 0;
   end;
   inc(ICounter);
   LastParsed:= 'I';
   // only output if it is the first occurence in a step
   if ICounter = 1 then
   begin
    // enable the step
    (FindComponent('Step' + IntToStr(StepCounter) + 'UseCB')
     as TCheckBox).Checked:= true;
    // set the pumps
    if command[i+1] = '1' then
    (FindComponent('Pump1OnOffCB' + IntToStr(StepCounter))
      as TCheckBox).Checked:= true
    else
     (FindComponent('Pump1OnOffCB' + IntToStr(StepCounter))
      as TCheckBox).Checked:= false;
    for p:= 2 to PumpNum do
    begin
     if (command[i+p] = '0') or (command[i+p] = '1') then
      if command[i+p] = '1' then
       (FindComponent('Pump' + IntToStr(p) + 'OnOffCB' + IntToStr(StepCounter))
        as TCheckBox).Checked:= true
      else
       (FindComponent('Pump' + IntToStr(p) + 'OnOffCB' + IntToStr(StepCounter))
        as TCheckBox).Checked:= false;
    end;
   end;
  end; // end parse 'I'

  // parse step 'M'
  if command[i] = 'M' then
  begin
   // M can occur twice in one step, thus use StepCounter
   // but only parse the first occurence
   // syntax is Mxxxx, with x = time in milliseconds
   inc(MCounter);
   LastParsed:= 'M';
   // determine the length
   j:= i;
   repeat
    inc(j)
   until IsDigit(command[j]) = false;
   StepTime:= StrToFloat(Copy(command, i+1, j-i-1)) / 1000;
   // only output if it is the first occurence in a step
   if MCounter = 1 then
   begin
    if (StepTime >= 1000) and (StepTime < 60000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= StepTime / 60;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBmin')
      as TRadioButton).Checked:= true;
     end;
    if (StepTime > 60000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= StepTime / 3600;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBh')
      as TRadioButton).Checked:= true;
    end;
    if (StepTime < 1000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= StepTime;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBs')
      as TRadioButton).Checked:= true;
    end;
    // store the time for a possible duty cycle calculation
    M1:= StepTime;
   end
   else if MCounter = 2 then
   begin
    // store the second time for the duty cycle
    M2:= StepTime;
    Have2M:= true;
   end;
  end; // end parse 'M'

  // parse step 'G'
  if command[i] = 'G' then
  // the frontend only supports maximal one loop nesting level e.g. ggXGAgXGBGC
  begin
   LastParsed:= 'G';
   // if we have 2 'M' statements and M1 < 1, then 'G' is for the duty cycle
   // if there is no digit, it is the overall loop run forever
   if not isDigit(command[i+1]) then
    RunEndlessCB.Checked:= true
   else
   begin
    // determine the length
    j:= i;
    repeat
     inc(j)
    until IsDigit(command[j]) = false;
    if Have2M and (M1 < 1) then
     G1:= StrToInt(Copy(command, i+1, j-i-1))
    else
     RepeatSE.Text:= Copy(command, i+1, j-i-1);
    RunEndlessCB.Checked:= false;
   end;
   if Have2M and (M1 < 1) then
   begin
    // calculate duty cycle
    (FindComponent('DutyCycle' + IntToStr(StepCounter) + 'FSE')
     as TFloatSpinEdit).Value:= M1 / (M1 + M2) * 100;
    // calculate step time
    DutyStepTime:= (M1 + M2) * (G1 + 1);
    if (DutyStepTime >= 1000) and (DutyStepTime < 60000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= DutyStepTime / 60;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBmin')
      as TRadioButton).Checked:= true;
     end;
    if (DutyStepTime > 60000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= DutyStepTime / 3600;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBh')
      as TRadioButton).Checked:= true;
    end;
    if (DutyStepTime < 1000) then
    begin
     (FindComponent('RunTime' + IntToStr(StepCounter) + 'FSE')
      as TFloatSpinEdit).Value:= DutyStepTime;
     (FindComponent('Unit' + IntToStr(StepCounter) + 'RBs')
      as TRadioButton).Checked:= true;
    end;
    Have2M:= false;
   end;
  end; // end parse 'G'

 end; // end parse the command

 result:= true;

end;

// saving ---------------------------------------------------------------------

procedure TMainForm.SaveActionMIClick(Sender: TObject);
 // writes serial command and pump names into a text file
var
 OutName, command : string;
 SaveFileStream : TFileStream;
 CommandResult : Boolean;
 k : integer;
begin
 // generate command according to current settings
 CommandResult:= GenerateCommand(command);
 // if GenerateCommand returns e.g. a too long time do nothing
 if not CommandResult then
  exit;
 CommandM.Text:= command;
 OutName:= '';
 OutName:= SaveHandling(InName, false); // opens file dialog
 if OutName <> '' then
 begin
  try
   if FileExists(OutName) = true then
    begin
     SaveFileStream:= TFileStream.Create(OutName, fmOpenReadWrite);
     // the new command might be shorter, therefore delete its content
     SaveFileStream.Size:= 0;
    end
   else
    SaveFileStream:= TFileStream.Create(OutName, fmCreate);
   // write the command
   SaveFileStream.Write(command[1], Length(command));
   SaveFileStream.Write(LineEnding, 2); // line break
   // write the pump names
   for k:= 1 to PumpNum do
   begin
    if (FindComponent('Pump' + IntToStr(k) + 'GB1')
      as TGroupBox).Caption <> '' then // one cannot output an empty name via FileStream.Write
     SaveFileStream.Write((FindComponent('Pump' + IntToStr(k) + 'GB1') as TGroupBox).Caption[1]
      , Length((FindComponent('Pump' + IntToStr(k) + 'GB1') as TGroupBox).Caption));
    SaveFileStream.Write(LineEnding, 2);
   end;
  finally
   SaveFileStream.Free;
  end; //end finally
 end; //end if OutName <> ''
end;

function TMainForm.SaveHandling(InName: string; const Calculation: Boolean): string;
// handles the save dialog
var YesNo : integer;
    OutNameTemp : string;
begin
 result:= '';
 // propose a file name
 if (InName <> '') and (SaveDialog.FileName = '') then
  SaveDialog.FileName:= ExtractFileName(InName);
 if SaveDialog.FileName <> '' then
  SaveDialog.FileName:= ExtractFileName(SaveDialog.FileName);
 if SaveDialog.Execute = true then
 begin
  OutNameTemp:= SaveDialog.FileName;
  // add file extension '.PDAction' if it is missing
  if (ExtractFileExt(OutNameTemp) <> '.PDAction') then
   Insert('.PDAction', OutNameTemp,Length(OutNameTemp) + 1);
  if FileExists(OutNameTemp) = true then
  begin
   with CreateMessageDialog // MessageDlg with mbNo as default
       ('Do you want to overwrite the existing file' + LineEnding
             + ExtractFileName(OutNameTemp) + ' ?',
             mtWarning, [mbYes]+[mbNo]) do
   try
    ActiveControl:= FindComponent('NO') as TWinControl;
    YesNo:= ShowModal;
   finally
    Free;
   end;
   if YesNo = mrNo then // if No
   begin
    SaveHandling(InName, Calculation);
    exit;
   end
   else // if Yes
   begin
    result:= OutNameTemp;
    // store last used name
    SaveDialog.FileName:= ExtractFileName(OutNameTemp);
    exit;
   end;
  end; // end if FileExists

  result:= OutNameTemp;
  // store last used name
  SaveDialog.FileName:= ExtractFileName(OutNameTemp);
 end; // end if TabelleSpeichernDialog.Execute

end;

end.

