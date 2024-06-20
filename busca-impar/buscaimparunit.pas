unit buscaImparUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnBusca: TButton;
    Memo1: TMemo;
    procedure btnBuscaClick(Sender: TObject);
  private

  public
    procedure buscaImparesFor();

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.btnBuscaClick(Sender: TObject);
begin
  buscaImparesFor();
end;

procedure TForm1.buscaImparesFor();
var
  aux: Integer;
  i:Integer;
begin
  Memo1.Lines.Add('Números de ímpares de 0 a 10');
  for i:=0 to 10 do
  begin
    if (i)MOD(2)<>0 then
       Memo1.Lines.Add(IntToStr(i));
  end;
end;

end.

