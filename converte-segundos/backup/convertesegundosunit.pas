unit converteSegundosUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    inputSeg: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    labelInput: TLabel;
    outputH: TEdit;
    outputM: TEdit;
    outputS: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure inputSegChange(Sender: TObject);
  private

  public
    procedure converteSeg();

  end;

var
  Form1: TForm1;
  horas: Integer;
  minutos: Integer;
  segundos: Integer;

implementation

{$R *.lfm}
procedure TForm1.converteSeg();
var
  aux: Integer;
  resto: Integer;
begin
  aux:= StrToInt(inputSeg.Text);
  if aux>=3600 then
    begin
      horas:=(aux)DIV(3600);
      resto:=(aux)MOD(3600);
      if resto>=60 then
        begin
          minutos:=(resto)DIV(60);
          resto:=(resto)MOD(60);
        end

    end
  else
   begin
   if aux>=60 then
        begin
          minutos:=(aux)DIV(60);
          resto:=(aux)MOD(60);
        end
   else segundos:=aux;
   end


end;

{ TForm1 }

procedure TForm1.inputSegChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  segundos:=0;
  minutos:=0;
  horas:=0;
  outputH.Text:='';
  outputM.Text:='';
  outputS.Text:='';
  converteSeg();
  outputH.Text:=IntToStr(horas);
  outputM.Text:=IntToStr(minutos);
  outputS.Text:=IntToStr(segundos);
end;



end.

