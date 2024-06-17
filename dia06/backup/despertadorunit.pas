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

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnLigarClick(Sender: TObject);
begin
  //showMessage(TimeToStr(Time));
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

end;

end.

