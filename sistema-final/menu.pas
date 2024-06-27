unit menu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, cadUsuarios;

type

  { TmenuF }

  TmenuF = class(TForm)
    MainMenu1: TMainMenu;
    itemCadastro: TMenuItem;
    itemSobre: TMenuItem;
    itemSair: TMenuItem;
    itemCatProduto: TMenuItem;
    itemCliente: TMenuItem;
    itemProduto: TMenuItem;
    itemOrcamento: TMenuItem;
    itemOrcamentoItem: TMenuItem;
    itemUsuarios: TMenuItem;
    procedure itemUsuariosClick(Sender: TObject);
  private

  public

  end;

var
  menuF: TmenuF;

implementation

{$R *.lfm}

{ TmenuF }

procedure TmenuF.itemUsuariosClick(Sender: TObject);
var
  formUsuarios: cadUsuarios.TcadUsuariosF;
begin
  try
    formUsuarios:=cadUsuarios.TcadUsuariosF.Create(Self);
    formUsuarios.ShowModal;
  finally
    formUsuarios.Free;
  end;


end;

end.

