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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

end.
