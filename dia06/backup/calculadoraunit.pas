unit calculadoraUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button0: TButton;
    ButtonDivide: TButton;
    ButtonMult: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonEqual: TButton;
    ButtonVirgula: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    output: TEdit;
    procedure Button0Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure ButtonEqualClick(Sender: TObject);
    procedure ButtonMinusClick(Sender: TObject);
    procedure ButtonMultClick(Sender: TObject);
    procedure ButtonPlusClick(Sender: TObject);
    procedure outputChange(Sender: TObject);
  private

  public
    acc: Double;

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonDivideClick(Sender: TObject);
begin
  output.Text:=output.Text+'/';

end;

procedure TForm1.ButtonEqualClick(Sender: TObject);
begin

end;

procedure TForm1.ButtonMinusClick(Sender: TObject);
begin
  output.Text:=output.Text+'-';

end;

procedure TForm1.ButtonMultClick(Sender: TObject);
begin
  output.Text:=output.Text+'*';

end;

procedure TForm1.ButtonPlusClick(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  output.Text:=output.Text+'1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  output.Text:=output.Text+'2';

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  output.Text:=output.Text+'3';

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  output.Text:=output.Text+'4';

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  output.Text:=output.Text+'5';

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  output.Text:=output.Text+'6';

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  output.Text:=output.Text+'7';

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  output.Text:=output.Text+'8';

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  output.Text:=output.Text+'9';

end;

procedure TForm1.Button0Click(Sender: TObject);
begin
  output.Text:=output.Text+'0';

end;

procedure TForm1.outputChange(Sender: TObject);
begin

end;

end.

