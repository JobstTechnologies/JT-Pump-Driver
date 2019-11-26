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
    procedure CancelButtonBClick(Sender: TObject);
    procedure OKButtonBClick(Sender: TObject);
  private

  public

  end;

var
  SerialUSBSelectionF: TSerialUSBSelectionF;
  COMPort : string;

implementation

{$R *.lfm}

{ TSerialUSBSelectionF }

procedure TSerialUSBSelectionF.OKButtonBClick(Sender: TObject);
begin
 COMPort:= SerialUSBPortCB.Text;
 SerialUSBSelectionF.Close; // close dialog
end;

procedure TSerialUSBSelectionF.CancelButtonBClick(Sender: TObject);
begin
 COMPort:= 'Ignore';
 SerialUSBSelectionF.Close; // close dialog
end;

end.

