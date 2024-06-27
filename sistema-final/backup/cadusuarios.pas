unit cadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids, Buttons,
  StdCtrls, ZDataset, ZAbstractRODataset, cadPai;

type

  { TcadUsuariosF }

  TcadUsuariosF = class(TcadPaiF)
    btnBuscar: TBitBtn;
    dsUsuarios: TDataSource;
    DBGrid1: TDBGrid;
    inputCod: TEdit;
    StaticText1: TStaticText;
    queryUsuarios: TZQuery;
    queryUsuariosid: TZIntegerField;
    queryUsuariosnome_completo: TZRawStringField;
    queryUsuariossenha: TZRawStringField;
    queryUsuariosusuario: TZRawStringField;
    procedure btnBuscarClick(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
  private

  public

  end;

var
  cadUsuariosF: TcadUsuariosF;

implementation

{$R *.lfm}

{ TcadUsuariosF }

procedure TcadUsuariosF.dsUsuariosDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TcadUsuariosF.btnBuscarClick(Sender: TObject);
var
  codigoUsuarios:String;
begin
  codigoUsuarios:=inputCod.Text;
  if codigoUsuarios = '' then
    begin
    queryUsuarios.SQL.Add('select * from usuarios ');
    queryUsuarios.Active:=True;
    end

  else
  begin
    queryUsuarios.SQL.Clear;
    queryUsuarios.SQL.Add('select * from usuarios where usuarios.id ='+ codigoUsuarios);
    queryUsuarios.Active:=True;

  end;



end;

end.

