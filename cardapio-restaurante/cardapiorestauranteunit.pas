unit cardapioRestauranteUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ActnList;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    labelTotal: TLabel;
    quantidade1: TComboBox;
    quantidade2: TComboBox;
    quantidade3: TComboBox;
    quantidade4: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    outputTotal: TEdit;
    labelPreco: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure calculaCompra();
  private

  public
    total: Double;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  calculaCompra();
  outputTotal.Text:=FloatToStr(total);

end;

procedure TForm1.calculaCompra();
begin
  if CheckBox1.Checked=(True) then;
     total:= total + StrToFloat(Edit1.Text) * StrToFloat(quantidade1.Text);
  if  CheckBox2.Checked=(True) then;
     total:= total + StrToFloat(Edit2.Text) * StrToFloat(quantidade2.Text);
  if  CheckBox3.Checked=(True) then;
     total:= total + StrToFloat(Edit3.Text) * StrToFloat(quantidade3.Text);
  if  CheckBox4.Checked=(True) then;
     total:= total + StrToFloat(Edit4.Text) * StrToFloat(quantidade4.Text);

end;

end.

