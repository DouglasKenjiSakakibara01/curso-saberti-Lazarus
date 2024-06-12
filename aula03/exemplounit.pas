unit exemploUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TcalculaF }

  TcalculaF = class(TForm)
    btnCalculo: TButton;
    edit1: TEdit;
    edit: TEdit;
    label1: TLabel;
    label2: TLabel;
    procedure edit1Change(Sender: TObject);
  private

  public
    function calculaAreaCirculo(Raio:Double):Double;

  end;

var
  calculaF: TcalculaF;
  Result: Double;

const
  pi=3.14;
implementation

{$R *.lfm}
function calculaAreaCirculo(Raio:Double):Double;
begin
  Result:= pi * (Raio * Raio);

end;

{ TcalculaF }

procedure TcalculaF.edit1Change(Sender: TObject);
begin

end;

function TcalculaF.calculaAreaCirculo(Raio: Double): Double;
begin

end;



end.

