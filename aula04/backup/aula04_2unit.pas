unit aula04_2Unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    n1: TEdit;
    n2: TEdit;
    n3: TEdit;
    n4: TEdit;
    faltas: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private

  public
    function calculaNota():Double;

  end;

var
  Form1: TForm1;

const
  numFaltas=50;
  media=6.0;
implementation

{$R *.lfm}

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  nfaltas:Int64;
  res:Double;
begin
    nfaltas:=StrToInt64(faltas.Text);
    res:= calculaNota();
    if (res>=6.0) and (nfaltas<numFaltas) then
      showMessage('Aprovado - Média:'+FloatToStr(res))
      //showMessage(FloatToStr(res))
    else
      showMessage('Reprovado - Média:'+FloatToStr(res));
      //showMessage(FloatToStr(res));
end;

function Tform1.calculaNota(): Double;
var
  nota1:Double;
  nota2:Double;
  nota3:Double;
  nota4:Double;
begin
  nota1:=StrToFloat(n1.Text);
  nota2:=StrToFloat(n2.Text);
  nota3:=StrToFloat(n3.Text);
  nota4:=StrToFloat(n4.Text);

  Result:= (nota1+nota2+nota3+nota4)/4.0;


end;

end.

