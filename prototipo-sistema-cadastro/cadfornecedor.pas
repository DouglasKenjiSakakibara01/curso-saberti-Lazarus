unit CadFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadFornecedorF }

  TCadFornecedorF = class(TCadModeloF)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  CadFornecedorF: TCadFornecedorF;

implementation

{$R *.lfm}

{ TCadFornecedorF }

procedure TCadFornecedorF.FormCreate(Sender: TObject);
begin

end;

end.

