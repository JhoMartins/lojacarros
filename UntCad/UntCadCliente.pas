unit UntCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManCliente, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls,
  UntDM, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_sair: TToolButton;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    CPF: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Endereço: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Cidade: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Empresa: TLabel;
    DBEdit10: TDBEdit;
    Telefone: TLabel;
    DBEdit11: TDBEdit;
    StatusBar1: TStatusBar;
    PnlFicha: TPanel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

procedure TFrmCadCliente.btn_cancelarClick(Sender: TObject);
begin
  DM.ADODSCliente.Cancel;

  Application.MessageBox('A inclusão ou alteração foi abortada.', 'Atenção', MB_OK+MB_ICONERROR);

  btn_salvar.Enabled:= False;
  btn_cancelar.Enabled:= False;
  btn_Sair.Enabled:= True;
  PnlFicha.Enabled:= False;
end;

procedure TFrmCadCliente.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCliente.btn_salvarClick(Sender: TObject);
begin
  DM.ADODSCliente.Post;

  Application.MessageBox('O Registro foi incluído ou alterado com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION);

  btn_salvar.Enabled:= False;
  btn_cancelar.Enabled:= False;
  btn_Sair.Enabled:= True;
  PnlFicha.Enabled:= False;
end;

procedure TFrmCadCliente.FormActivate(Sender: TObject);
begin
  DM.ADODSCliente.FieldByName('cpf').EditMask:= '999.999.999-99';
  DM.ADODSCliente.FieldByName('celular').EditMask:= '(99)99999-9999';
  DM.ADODSCliente.FieldByName('tel_empresa').EditMask:= '(99)9999-9999';
end;

end.
