unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntCadCliente, UntManFuncionario, UntCadFuncionario, UntDM,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, UntManCarro, UntCadCarro, UntCadVenda, UntManVenda, UntManServico,
  UntManPeca, UntCadPeca, Vcl.Imaging.pngimage, Data.Win.ADODB, UntCadBase;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    cad_cliente: TAction;
    cad_carro: TAction;
    cad_empresa: TAction;
    cad_funcionario: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    man_cliente: TAction;
    man_carro: TAction;
    man_empresa: TAction;
    man_funcionario: TAction;
    ActionToolBar1: TActionToolBar;
    btn_servico: TAction;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Action1: TAction;
    Empresas: TAction;
    Venda: TAction;
    Peças: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure man_empresaExecute(Sender: TObject);
    procedure man_funcionarioExecute(Sender: TObject);
    procedure man_clienteExecute(Sender: TObject);
    procedure man_carroExecute(Sender: TObject);
    procedure btn_servicoExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EmpresasExecute(Sender: TObject);
    procedure VendaExecute(Sender: TObject);
    procedure PeçasExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure cad_clienteExecute(Sender: TObject);
    procedure abrirFormCadastro(DataSet: TADODataSet; Form: TFrmCadBase);
    procedure cad_carroExecute(Sender: TObject);
    procedure cad_empresaExecute(Sender: TObject);
    procedure cad_funcionarioExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UntManEmpresa, UntManCliente, UntCadEmpresa, UntCadServico, UntRelClientes,
  UntRelEmpresa, UntManBase, UntRelPecas, UntRelVenda,
  UntRelFuncionário, UntRelCarros;

procedure TForm1.abrirFormCadastro(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  DataSet.Close;
  DataSet.Open;
  DataSet.Insert;
  Form.Create(DataSet);
  Form.btn_salvar.Enabled:= true;
  Form.btn_cancelar.enabled:= true;
  Form.btn_sair.enabled:= false;
  Form.pnlficha.enabled:= true;
  Form.ShowModal;
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
FrmRelClientes.showmodal;
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
FrmRelPecas.showmodal;
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
frmrelvenda.showmodal;
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
frmrelfuncionario.showmodal;
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
frmrelCarro.showmodal;
end;

procedure TForm1.btn_servicoExecute(Sender: TObject);
var Frm: TFrmManServico;
begin
  Frm := FrmManServico.Create(DM.ADODSServico, FrmCadServico);
  Frm.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
var Frm: TFrmManVenda;
begin
  Frm := FrmManVenda.Create(DM.ADODSVenda, FrmCadVenda);
  Frm.ShowModal;
end;

procedure TForm1.Button20Click(Sender: TObject);
var Frm: TFrmManEmpresa;
begin
  Frm := FrmManEmpresa.Create(DM.ADODSEmpresa, FrmCadEmpresa);
  Frm.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
var Frm: TFrmManPeca;
begin
  Frm:= FrmManPeca.Create(DM.ADODSPeca, FrmCadPeca);
  Frm.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Frm: TFrmManFuncionario;
begin
  Frm:= FrmManFuncionario.Create(DM.ADODSFuncionario, FrmCadFuncionario);
  Frm.ShowModal;
end;

procedure TForm1.cad_carroExecute(Sender: TObject);
begin
  abrirFormCadastro(DM.ADODSCarro, FrmCadCarro);
end;

procedure TForm1.cad_clienteExecute(Sender: TObject);
begin
  abrirFormCadastro(DM.ADODSCliente, FrmCadCliente);
end;

procedure TForm1.cad_empresaExecute(Sender: TObject);
begin
  abrirFormCadastro(DM.ADODSEmpresa, FrmCadEmpresa);
end;

procedure TForm1.cad_funcionarioExecute(Sender: TObject);
begin
  abrirFormCadastro(DM.ADODSFuncionario, FrmCadFuncionario);
end;

procedure TForm1.EmpresasExecute(Sender: TObject);
begin
FrmRelEmpresa.showmodal;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
windowState:= wsMaximized;

statusbar1.Panels[1].Text:=
  formatdatetime(' dddd ", " dd " de " mmmm " de " yyyy', now);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  var confSaida: integer;
begin
  confSaida:= application.MessageBox('Tem certeza que deseja sair do sistema?',
  'Atenção',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

  if confSaida = IDYES then
    Application.Terminate
  else
    canclose:= false;

end;

procedure TForm1.man_carroExecute(Sender: TObject);
var Frm: TFrmManCarro;
begin
  Frm:= FrmManCarro.Create(DM.ADODSCarro, FrmCadCarro);
  Frm.ShowModal;
end;

procedure TForm1.man_clienteExecute(Sender: TObject);
var Frm : TFrmManCliente;
begin
  Frm:= FrmManCliente.Create(dm.ADODSCliente, FrmCadCliente);
  Frm.ShowModal;
end;

procedure TForm1.man_empresaExecute(Sender: TObject);
var Frm: TFrmManEmpresa;
begin
  Frm:= FrmManEmpresa.Create(DM.ADODSEmpresa, FrmCadEmpresa);
  Frm.showmodal;
end;

procedure TForm1.man_funcionarioExecute(Sender: TObject);
var Frm: TFrmManFuncionario;
begin
  Frm:= FrmManFuncionario.Create(DM.ADODSFuncionario, FrmCadFuncionario);
  Frm.ShowModal;
end;

procedure TForm1.PeçasExecute(Sender: TObject);
var Frm: TFrmManPeca;
begin
  Frm:= FrmManPeca.Create(DM.ADODSPeca, FrmCadPeca);
  Frm.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[0].Text:=timetostr(time);
end;

procedure TForm1.VendaExecute(Sender: TObject);
var Frm: TFrmManVenda;
begin
  Frm := FrmManVenda.Create(DM.ADODSVenda, FrmCadVenda);
  Frm.ShowModal;
end;
end.
