program sistema;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, zcomponent, menu, cadPai, datamodule, cadUsuarios;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TmenuF, menuF);
  Application.CreateForm(TcadPaiF, cadPaiF);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TcadUsuariosF, cadUsuariosF);
  Application.Run;
end.

