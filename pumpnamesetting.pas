unit PumpNameSetting;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  LCLType;

type

  { TPumpNameSettingF }

  TPumpNameSettingF = class(TForm)
    Label1: TLabel;
    OKButtonB: TBitBtn;
    CancelButtonB: TBitBtn;
    PumpNameE: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure PumpNameEKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  PumpNameSettingF: TPumpNameSettingF;

implementation

{$R *.lfm}

{ TPumpNameSettingF }

procedure TPumpNameSettingF.FormCreate(Sender: TObject);
begin
 ActiveControl:= PumpNameE;
end;

procedure TPumpNameSettingF.PumpNameEKeyPress(Sender: TObject; var Key: char);
begin
 // if we got a return key, treat it as if the user pressed the OK button
 if key = Char(VK_RETURN) then
  OKButtonB.Click;
end;

end.

