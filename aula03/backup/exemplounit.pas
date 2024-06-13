unit exemploUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TcalculaF }

  TcalculaF = class(TForm)
    btnCalculo: TButton;
    input: TEdit;
    result: TEdit;
    label1: TLabel;
    label2: TLabel;
    procedure btnCalculoClick(Sender: TObject);
    procedure inputChange(Sender: TObject);
    procedure resultChange(Sender: TObject);
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
function TcalculaF.calculaAreaCirculo(Raio:Double):Double;
begin
  Result:= pi * (Raio * Raio);

end;

{ TcalculaF }

procedure TcalculaF.inputChange(Sender: TObject);
begin


end;

procedure TcalculaF.btnCalculoClick(Sender: TObject);
begin
  result.Text:= FloatToStr(calculaAreaCirculo(StrToFloat(input.Text)));

end;

procedure TcalculaF.resultChange(Sender: TObject);
begin

end;




end.

