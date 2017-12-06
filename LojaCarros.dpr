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
  UntCadFuncionario in 'UntCad\UntCadFuncionario.pas' {FrmCadFuncionario},
  UntManCliente in 'UntMan\UntManCliente.pas' {FrmManCliente},
  UntCadCliente in 'UntCad\UntCadCliente.pas' {FrmCadCliente},
  UntManCarro in 'UntMan\UntManCarro.pas' {FrmManCarro},
  UntCadCarro in 'UntCad\UntCadCarro.pas' {FrmCadCarro},
  UntManVenda in 'UntMan\UntManVenda.pas' {FrmManVenda},
  UntCadVenda in 'UntCad\UntCadVenda.pas' {FrmCadVenda},
  UntManServico in 'UntMan\UntManServico.pas' {FrmManServico},
  UntCadServico in 'UntCad\UntCadServico.pas' {FrmCadServico},
  UntRelCarros in 'Relat�rios\UntRelCarros.pas' {FrmRelCarro},
  UntRelClientes in 'Relat�rios\UntRelClientes.pas' {FrmRelClientes},
  UntManPeca in 'UntMan\UntManPeca.pas' {FrmManPeca},
  UntCadPeca in 'UntCad\UntCadPeca.pas' {FrmCadPeca},
  UntRelEmpresa in 'Relat�rios\UntRelEmpresa.pas' {FrmRelEmpresa},
  UntRelPecas in 'Relat�rios\UntRelPecas.pas' {FrmRelPecas},
  UntRelFuncion�rio in 'Relat�rios\UntRelFuncion�rio.pas' {Form2},
  UntRelVenda in 'Relat�rios\UntRelVenda.pas' {FrmRelvenda};

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
  Application.CreateForm(TFrmManCliente, FrmManCliente);
  Application.CreateForm(TFrmCadCliente, FrmCadCliente);
  Application.CreateForm(TFrmManCarro, FrmManCarro);
  Application.CreateForm(TFrmCadCarro, FrmCadCarro);
  Application.CreateForm(TFrmManVenda, FrmManVenda);
  Application.CreateForm(TFrmCadVenda, FrmCadVenda);
  Application.CreateForm(TFrmManServico, FrmManServico);
  Application.CreateForm(TFrmCadServico, FrmCadServico);
  Application.CreateForm(TFrmRelCarro, FrmRelCarro);
  Application.CreateForm(TFrmRelClientes, FrmRelClientes);
  Application.CreateForm(TFrmManPeca, FrmManPeca);
  Application.CreateForm(TFrmCadPeca, FrmCadPeca);
  Application.CreateForm(TFrmRelEmpresa, FrmRelEmpresa);
  Application.CreateForm(TFrmRelPecas, FrmRelPecas);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrmRelvenda, FrmRelvenda);
  Application.Run;
end.
