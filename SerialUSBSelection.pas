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
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  SerialUSBSelectionF: TSerialUSBSelectionF;

implementation

{$R *.lfm}

{ TSerialUSBSelectionF }

procedure TSerialUSBSelectionF.FormCreate(Sender: TObject);
begin
 ActiveControl:= SerialUSBPortCB;
end;

end.

