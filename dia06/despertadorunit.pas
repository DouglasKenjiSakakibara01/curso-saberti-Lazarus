unit despertadorUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnLigar: TButton;
    horaInput: TEdit;
    minutoInput: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure btnLigarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  alarmeTime: TTime;
  alarmeSet:Boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnLigarClick(Sender: TObject);
var
  h: Integer;
  m: Integer;
begin
  //showMessage(TimeToStr(Time));
  Timer1.Interval := 1000;
  Timer1.Enabled := True;
  alarmeSet := False;
  h:=StrToInt(horaInput.Text);
  m:=StrToInt(minutoInput.Text);
  if (h<0) OR (h>24) OR (m<0) OR (M>60) then
     showMessage('Horário inválido')
  else
    begin
      Timer1.Enabled:=True;
      alarmeSet:=True;
      alarmeTime:= EncodeTime(h, m, 0, 0);
      showMessage('Alarme definido: '+ TimeToStr(alarmeTime));
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if alarmeSet AND (FormatDateTime('HH:MM', Now) = FormatDateTime('HH:MM', alarmeTime)) then
  begin
    Beep;
    ShowMessage('Hora do alarme!');
    alarmeSet := False;
  end;




end;
end.

