unit CadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, CadModelo;

type

  { TCadClientesF }

  TCadClientesF = class(TCadModeloF)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  CadClientesF: TCadClientesF;

implementation

{$R *.lfm}

{ TCadClientesF }

procedure TCadClientesF.Label1Click(Sender: TObject);
begin

end;

end.

