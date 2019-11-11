unit SerialUSBSelection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TSerialUSBSelectionF }

  TSerialUSBSelectionF = class(TForm)
    OKButtonB: TButton;
    CancelButtonB: TButton;
    SerialUSBPortCB: TComboBox;
    SerialUSBPortL: TLabel;
    procedure CancelButtonBClick;
    procedure OKButtonBClick;
  private

  public

  end;

var
  SerialUSBSelectionF: TSerialUSBSelectionF;
  COMPort : string;

implementation

{$R *.lfm}

{ TSerialUSBSelectionF }

procedure TSerialUSBSelectionF.OKButtonBClick;
begin
 COMPort:= SerialUSBPortCB.Text;
 SerialUSBSelectionF.Close; // close dialog
end;

procedure TSerialUSBSelectionF.CancelButtonBClick;
begin
 COMPort:= 'Ignore';
 SerialUSBSelectionF.Close; // close dialog
end;

end.

