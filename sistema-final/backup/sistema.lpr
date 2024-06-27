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
  Forms, zcomponent, menu, cadPai, datamodule;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  //Application.CreateForm(TcadPaiF, cadPaiF);
  Application.CreateForm(TmenuF, menuF);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

