unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, StdCtrls,
  DBCtrls, Buttons, RTTICtrls, ZDataset, ZAbstractRODataset, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCancelar: TButton;
    btnSair: TButton;
    btnNovo: TButton;
    btnEditar: TButton;
    btnGravar: TButton;
    btnExcluir: TButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dsCliente: TDataSource;
    DBGrid1: TDBGrid;
    queryCliente: TZQuery;
    queryClienteclienteid: TZIntegerField;
    queryClientecpf_cnpj_cliente: TZRawStringField;
    queryClientenome_cliente: TZRawStringField;
    queryClientetipo_cliente: TZRawStringField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
  queryCliente.Open;
end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   queryCliente.Close;
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  queryCliente.Insert;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.DBEdit1Change(Sender: TObject);
begin

end;

procedure TForm1.btnEditarClick(Sender: TObject);
begin
  queryCliente.Edit;

end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
   If  MessageDlg('Você tem certeza que deseja excluir o registro?', mtConfirmation,[mbyes,mbno],0)= mryes then
  begin
    queryCliente.Delete;
  end;
end;

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  queryCliente.Post;
end;

end.

