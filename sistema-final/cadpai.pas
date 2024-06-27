unit cadPai;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, Menus,
  ActnList, StdCtrls, ComCtrls, ExtCtrls, DBGrids;

type

  { TcadPaiF }

  TcadPaiF = class(TForm)
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnBuscar: TBitBtn;
    btnNovo: TBitBtn;
    btnSair: TBitBtn;
    DBGrid1: TDBGrid;
    editBusca: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Pesquisa: TTabSheet;
    Cadastro: TTabSheet;
  private

  public

  end;

var
  cadPaiF: TcadPaiF;

implementation

{$R *.lfm}

{ TcadPaiF }




end.

