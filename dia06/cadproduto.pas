unit CadProduto;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadProdutoF }

  TCadProdutoF = class(TCadModeloF)
    ComboBox1: TComboBox;
    IdCliente: TEdit;
    DescricaoSimples: TEdit;
    Edit4: TEdit;
    LabelIDCliente: TLabel;
    LabelDescS: TLabel;
    LabelDescC: TLabel;
    LabelVenda: TLabel;
    Memo1: TMemo;
  private

  public

  end;

var
  CadProdutoF: TCadProdutoF;

implementation

{$R *.lfm}

end.

