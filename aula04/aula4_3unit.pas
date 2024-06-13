unit aula4_3Unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    bruto1: TEdit;
    bruto2: TEdit;
    bruto3: TEdit;
    btnCalcula: TButton;
    desconto1: TEdit;
    desconto2: TEdit;
    desconto3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    liquido1: TEdit;
    liquido2: TEdit;
    liquido3: TEdit;
    procedure btnCalculaClick(Sender: TObject);
  private

  public
    brutot: Double;
    liquidot: Double;
    cont: Int64;
    procedure calculaSalario();

  end;

var
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }

procedure Tform1.calculaSalario();
var
  listBruto: array[0..12] of String;
  listLiquido: array[0..12] of String;
  i: Integer;
  //aux: Double;
  //a:String;
  aux1: Double;
  aux2: Double;
  aux3: Double;
begin
  aux1:=StrToFloat(bruto1.Text)*((100.00-StrToFloat(desconto1.Text))/100);
  brutot:=StrToFloat(bruto1.Text);
  liquidot:=liquidot+aux1;
end;
  {
begin
  for i:=0 to 1 do
      //brutot:=brutot+StrToFloat(('bruto'+IntToStr(i+1)+'.Text'));
      //a:='bruto'+IntToStr(i+1)+'.Text';
      aux:=StrToFloat(a);
      //showMessage(FloatToStr(brutot));
       //showMessage(FloatToStr(aux));
  //brutot:=brutot + StrToFloat(bruto1.Text);
  //liquidot:= liquidot + StrToFloat(bruto1.Text)*((100.00-StrToFloat(desconto1.Text))/100);
  //cont:=cont+1
end;
}
procedure TForm1.btnCalculaClick(Sender: TObject);
begin
  calculaSalario();
  showMessage(FloatToStr(liquidot));

end;


end.

