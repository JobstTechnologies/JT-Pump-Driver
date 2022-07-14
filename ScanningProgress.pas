unit ScanningProgress;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TScanningProgressF }

  TScanningProgressF = class(TForm)
    ScanningL: TLabel;
    ScanningPB: TProgressBar;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private

  public

  end;

var
  ScanningProgressF: TScanningProgressF;

implementation

{$R *.lfm}

{ TScanningProgressF }

procedure TScanningProgressF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 // don't allow
 CanClose:= False;
end;

end.

