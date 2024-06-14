unit calculaCustoUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcula: TButton;
    custoFabrica: TEdit;
    distribuidor: TEdit;
    imposto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    resultado: TEdit;
    procedure btnCalculaClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private

  public
    procedure calculaCusto();

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.btnCalculaClick(Sender: TObject);
begin
  calculaCusto();
end;

procedure TForm1.Label5Click(Sender: TObject);
begin

end;

procedure TForm1.calculaCusto();
var
  custoF:Double;
  custoD:Double;
  custoI:Double;
  res:Double;
begin
  custoF:=StrToFloat(custoFabrica.Text);
  custoD:=custoF * (StrToFloat(distribuidor.Text))/100.00;
  custoI:=custoF * (StrToFloat(imposto.Text))/100.00;
  res:=custoF+custoD+custoI;


  resultado.Text:=FloatToStr(res);



end;

end.

