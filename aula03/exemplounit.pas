unit exemploUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs;

type
  TcalculaF = class(TForm)
  private

  public
    function calculaAreaCirculo (Raio:Double):Double;

  end;

var
  calculaF: TcalculaF;
  Result: Double;

const
  pi=3.14;
implementation

{$R *.lfm}
function calculaAreaCirculo (Raio:Double):Double;
begin
  Result:= pi * (Raio * Raio);

end;



end.
