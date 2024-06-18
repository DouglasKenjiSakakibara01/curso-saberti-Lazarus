unit MenuPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  CadClientes, CadProduto, CadFornecedor, CadUsuarios, CadVendedores, OpSobre;

type

  { TMenuPrincipalF }

  TMenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    ItemCliente: TMenuItem;
    ItemFornecedor: TMenuItem;
    ItemVendedor: TMenuItem;
    ItemUsuario: TMenuItem;
    MenuItem4: TMenuItem;
    ItemProduto: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ItemClienteClick(Sender: TObject);
    procedure ItemFornecedorClick(Sender: TObject);
    procedure ItemProdutoClick(Sender: TObject);
    procedure ItemUsuarioClick(Sender: TObject);
    procedure ItemVendedorClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  MenuPrincipalF: TMenuPrincipalF;

implementation

{$R *.lfm}

{ TMenuPrincipalF }

procedure TMenuPrincipalF.MenuItem1Click(Sender: TObject);

begin

end;


procedure TMenuPrincipalF.MenuItem3Click(Sender: TObject);
var
  sobre:OpSobre.TOpSobreF;
begin
  sobre:=OpSobre.TOpSobreF.Create(Self);
  sobre.ShowModal;


end;

procedure TMenuPrincipalF.MenuItem4Click(Sender: TObject);
begin
  Close;
end;

procedure TMenuPrincipalF.FormCreate(Sender: TObject);
begin

end;

procedure TMenuPrincipalF.ItemClienteClick(Sender: TObject);
var
  formCliente: CadClientes.TCadClientesF;
begin
  formCliente:= CadClientes.TCadClientesF.Create(Self);
  formCliente.ShowModal;

end;

procedure TMenuPrincipalF.ItemFornecedorClick(Sender: TObject);
var
  formFornecedor:CadFornecedor.TCadFornecedorF;
begin
  formFornecedor:= CadFornecedor.TCadFornecedorF.Create(Self);
  formFornecedor.ShowModal;

end;

procedure TMenuPrincipalF.ItemProdutoClick(Sender: TObject);
var
  formProduto:CadProduto.TCadProdutoF;
begin
  formProduto:=CadProduto.TCadProdutoF.Create(Self);
  formProduto.ShowModal;

end;

procedure TMenuPrincipalF.ItemUsuarioClick(Sender: TObject);
var
  formUsuario:CadUsuarios.TCadUsuariosF;
begin
  formUsuario:=CadUsuarios.TCadUsuariosF.Create(Self);
  formUsuario.ShowModal;

end;

procedure TMenuPrincipalF.ItemVendedorClick(Sender: TObject);
var
  formVendedor:CadVendedores.TCadVendedoresF;
begin
  formVendedor:=CadVendedores.TCadVendedoresF.Create(Self);
  formVendedor.ShowModal;

end;

end.

