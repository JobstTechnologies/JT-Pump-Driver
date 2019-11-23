unit PumpNameSetting;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  SerialUSBSelection;

type

  { TPumpNameSettingF }

  TPumpNameSettingF = class(TSerialUSBSelectionF)
    PumpNameE: TEdit;
    procedure CancelButtonBClick(Sender: TObject);
    procedure OKButtonBClick(Sender: TObject);
  private

  public

  end;

var
  PumpNameSettingF: TPumpNameSettingF;
  PumpName : string;

implementation

{$R *.lfm}

{ TPumpNameSettingF }

procedure TPumpNameSettingF.OKButtonBClick(Sender: TObject);
begin
 PumpName:= PumpNameE.Text;
 PumpNameSettingF.Close; // close dialog
end;

procedure TPumpNameSettingF.CancelButtonBClick(Sender: TObject);
begin
 PumpName:= 'Ignore';
 PumpNameSettingF.Close; // close dialog
end;


end.

