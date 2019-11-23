unit PumpNameSetting;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TPumpNameSettingF }

  TPumpNameSettingF = class(TForm)
    Label1: TLabel;
    OKButtonB: TBitBtn;
    CancelButtonB: TBitBtn;
    PumpNameE: TEdit;
  private

  public

  end;

var
  PumpNameSettingF: TPumpNameSettingF;

implementation

{$R *.lfm}

{ TPumpNameSettingF }


end.

