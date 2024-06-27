unit cadUsuarios;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBCtrls, StdCtrls,
  ZDataset, cadPai;

type

  { TcadUsuariosF }

  TcadUsuariosF = class(TcadPaiF)
    dsUsuarios: TDataSource;
    editId: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    queryUsuarios: TZQuery;
  private

  public

  end;

var
  cadUsuariosF: TcadUsuariosF;

implementation

{$R *.lfm}

end.

