unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntCadCliente, UntManFuncionario, UntCadFuncionario, UntDM,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, UntManCarro, UntCadCarro, UntCadVenda, UntManVenda, UntManServico;

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
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UntManEmpresa, UntManCliente, UntCadEmpresa, UntCadServico;

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

procedure TForm1.Button2Click(Sender: TObject);
var Frm: TFrmManEmpresa;
begin
  Frm := FrmManEmpresa.Create(DM.ADODSEmpresa, FrmCadEmpresa);
  Frm.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Frm: TFrmManFuncionario;
begin
  Frm:= FrmManFuncionario.Create(DM.ADODSFuncionario, FrmCadFuncionario);
  Frm.ShowModal;
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
  'Aten��o',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

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

procedure TForm1.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels[0].Text:=timetostr(time);
end;

end.
