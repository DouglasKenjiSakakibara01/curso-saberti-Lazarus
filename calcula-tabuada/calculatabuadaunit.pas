unit calculaTabuadaUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnGerar: TButton;
    input: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    procedure btnGerarClick(Sender: TObject);
  private

  public
    procedure gerarTabuada();

  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}

procedure TForm1.btnGerarClick(Sender: TObject);
begin
  gerarTabuada();
end;

procedure TForm1.gerarTabuada();
var
  inputValue: Integer;
  i:Integer ;
begin
  inputValue:=StrToInt(input.Text);
  for i:=1 to 10 do
  begin
    Memo1.Lines.Add(IntToStr(inputValue)+' X'+IntToStr(i)+ '= '+ IntToStr(inputValue*i));

  end;


end;

end.

