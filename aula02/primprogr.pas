unit PrimProgr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, ColorBox,
  ExtCtrls, ComCtrls, PairSplitter, StdCtrls, Grids, ActnList, ValEdit;

type

  { TPrimProgrF }

  TPrimProgrF = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    btnLeft: TBitBtn;
    btnRight: TBitBtn;
    btnTop: TBitBtn;
    btnBottom: TBitBtn;
    btnMensagem: TBitBtn;
    ColorBox1: TColorBox;
    ColorListBox1: TColorListBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Image1: TImage;
    PairSplitter1: TPairSplitter;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnTopClick(Sender: TObject);
    procedure btnBottomClick(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure ColorListBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private

  public

  end;

var
  PrimProgrF: TPrimProgrF;

implementation

{$R *.lfm}

{ TPrimProgrF }

procedure TPrimProgrF.FormClick(Sender: TObject);
begin

end;

procedure TPrimProgrF.Image1Click(Sender: TObject);
begin

end;

procedure TPrimProgrF.StaticText1Click(Sender: TObject);
begin

end;

procedure TPrimProgrF.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin


end;

procedure TPrimProgrF.btnMensagemClick(Sender: TObject);
begin
  showMessage('Meu primeiro programa');

end;

procedure TPrimProgrF.ColorListBox1Click(Sender: TObject);
begin
  PrimProgrF.Color:=ColorListBox1.Selected;
end;

procedure TPrimProgrF.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'maiusculo' then
     begin
        Edit1.Text:=UpperCase(Edit1.Text);

     end
  else if ComboBox1.Text = 'minusculo' then
     begin
        Edit1.Text:=LowerCase(Edit1.Text);
     end
  else if ComboBox1.Text = 'firstMai' then
     begin
        Edit1.Text:=UpperCase(Edit1.Text[1]) + Copy(Edit1.Text, 2, Length(Edit1.Text) - 1);
     end
  else if ComboBox1.Text = 'firstMin' then
     begin
        Edit1.Text:=LowerCase(Edit1.Text[1]) + Copy(Edit1.Text, 2, Length(Edit1.Text) - 1);
     end
end;

procedure TPrimProgrF.Edit1Change(Sender: TObject);
begin

end;

procedure TPrimProgrF.BitBtn1Click(Sender: TObject);
begin
  btnMensagem.Caption:='Caption alterado';
  //PrimProgrF.Color:=clMaroon;


end;

procedure TPrimProgrF.BitBtn2Click(Sender: TObject);
begin
  PrimProgrF.Caption:='Caption form alterado';


end;

procedure TPrimProgrF.BitBtn3Click(Sender: TObject);
begin
  if Image1.Visible = (True) then
     begin
     Image1.Visible:=(False);
     end
  else
   begin
     Image1.Visible:=(True);
     end

end;

procedure TPrimProgrF.btnLeftClick(Sender: TObject);
begin
  Image1.Left:= Image1.Left-10;

end;

procedure TPrimProgrF.btnRightClick(Sender: TObject);
begin
  Image1.Left:= Image1.Left+10;
end;

procedure TPrimProgrF.btnTopClick(Sender: TObject);
begin
  Image1.Top:= Image1.Top-10;
end;

procedure TPrimProgrF.btnBottomClick(Sender: TObject);
begin
  Image1.Top:= Image1.Top+10;

end;

end.

