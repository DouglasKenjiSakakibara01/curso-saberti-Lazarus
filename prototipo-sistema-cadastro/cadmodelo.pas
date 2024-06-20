unit CadModelo;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ActnList;

type

  { TCadModeloF }

  TCadModeloF = class(TForm)
    ButtonEditar: TButton;
    ButtonExcluir: TButton;
    ButtonGravar: TButton;
    ButtonNovo: TButton;
    ButtonSair: TButton;
    Panel1: TPanel;
  private

  public

  end;

var
  CadModeloF: TCadModeloF;

implementation

{$R *.lfm}

end.

