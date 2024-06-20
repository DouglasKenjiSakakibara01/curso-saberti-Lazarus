unit CadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,MenuPrincipal;

type

  { TCadEsqSenhaF }

  TCadEsqSenhaF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    InputEmail: TEdit;
    InputNovaSenha: TEdit;
    InputRepeteSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  CadEsqSenhaF: TCadEsqSenhaF;

implementation

{$R *.lfm}

{ TCadEsqSenhaF }


procedure TCadEsqSenhaF.Button1Click(Sender: TObject);
var
  formMenu: MenuPrincipal.TMenuPrincipalF;
begin
  formMenu:=MenuPrincipal.TMenuPrincipalF.Create(Self);
  formMenu.ShowModal;

end;

procedure TCadEsqSenhaF.Button2Click(Sender: TObject);
begin
  Close;
end;


end.

