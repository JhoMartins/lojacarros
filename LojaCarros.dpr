program LojaCarros;

uses
  Vcl.Forms,
  UntMenuPrincipal in 'UntMenuPrincipal.pas' {Form1},
  UntManCliente in 'UntMan\UntManCliente.pas' {FrmManCliente},
  UntDM in 'bd\UntDM.pas' {DM: TDataModule},
  UntCadCliente in 'UntCad\UntCadCliente.pas' {FrmCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmManCliente, FrmManCliente);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.Run;
end.
