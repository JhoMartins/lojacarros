program LojaCarros;

uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {Form1},
  UntDM in 'bd\UntDM.pas' {DM: TDataModule},
  UntManBase in 'UntMan\UntManBase.pas' {FrmManBase},
  UntManEmpresa in 'UntMan\UntManEmpresa.pas' {FrmManEmpresa},
  UntCadBase in 'UntCad\UntCadBase.pas' {FrmCadBase},
  UntCadEmpresa in 'UntCad\UntCadEmpresa.pas' {FrmCadEmpresa},
  UntManFuncionario in 'UntMan\UntManFuncionario.pas' {FrmManFuncionario},
  UntCadFuncionario in 'UntCad\UntCadFuncionario.pas' {FrmCadFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmManBase, FrmManBase);
  Application.CreateForm(TFrmManEmpresa, FrmManEmpresa);
  Application.CreateForm(TFrmCadBase, FrmCadBase);
  Application.CreateForm(TFrmCadEmpresa, FrmCadEmpresa);
  Application.CreateForm(TFrmManFuncionario, FrmManFuncionario);
  Application.CreateForm(TFrmCadFuncionario, FrmCadFuncionario);
  Application.Run;
end.
