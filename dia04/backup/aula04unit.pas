unit aula04Unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalculo: TBitBtn;
    input1: TEdit;
    input2: TEdit;
    input3: TEdit;
    input4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    resultado: TEdit;
    procedure btnCalculoClick(Sender: TObject);
    procedure input2Change(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private

  public
    function calculaSoma(): Double;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.input2Change(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.btnCalculoClick(Sender: TObject);
begin
  resultado.Text:=FloatToStr(calculaSoma());
end;

function Tform1.calculaSoma(): Double;
var
  p1: Double;
  p2: Double;
  p3: Double;
  p4: Double;
begin
   Result:= StrToFloat(input1.Text)+StrToFloat(input2.Text)+StrToFloat(input3.Text)+StrToFloat(input4.Text);
end;
end.

