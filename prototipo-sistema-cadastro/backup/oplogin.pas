unit OpLogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,MenuPrincipal, CadEsqSenha;

type

  { TOpLoginF }

  TOpLoginF = class(TForm)
    ButtonEntrar: TButton;
    ButtonSair: TButton;
    ButtonForgetSenha: TButton;
    InputEmail: TEdit;
    InputSenha: TEdit;
    LabelEmail: TLabel;
    LabelSenha: TLabel;
    procedure ButtonEntrarClick(Sender: TObject);
    procedure ButtonForgetSenhaClick(Sender: TObject);
    procedure ButtonSairClick(Sender: TObject);
  private

  public

  end;

var
  OpLoginF: TOpLoginF;

implementation

{$R *.lfm}

{ TOpLoginF }


procedure TOpLoginF.ButtonEntrarClick(Sender: TObject);
var
  formMenu:MenuPrincipal.TMenuPrincipalF;
begin
  try
    formMenu:= MenuPrincipal.TMenuPrincipalF.Create(Self);
    formMenu.ShowModal;

  finally
    //showMessage('Liberou memória');
    formMenu.Free;
  end;

end;

procedure TOpLoginF.ButtonForgetSenhaClick(Sender: TObject);
var
  formEsqSenha:CadEsqSenha.TCadEsqSenhaF;
begin
  formEsqSenha:=CadEsqSenha.TCadEsqSenhaF.Create(Self);
  formEsqSenha.ShowModal;

end;

procedure TOpLoginF.ButtonSairClick(Sender: TObject);
begin
  Close;
end;

end.

