unit UntCadServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmCadServico = class(TFrmCadBase)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Status: TLabel;
    Label8: TLabel;
    ADOQueryCarro: TADOQuery;
    DSCarro: TDataSource;
    ADOQueryEmpresa: TADOQuery;
    DsEmpresa: TDataSource;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    GroupBox1: TGroupBox;
    PnlPecas: TPanel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    ADOQueryPeca: TADOQuery;
    DSPeca: TDataSource;
    Bbt_inserir: TBitBtn;
    Bbt_excluir: TBitBtn;
    Bbt_confirmar: TBitBtn;
    Bbt_cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    ADOQueryPecaid: TAutoIncField;
    ADOQueryPecanome: TStringField;
    ADOQueryPecavalor_unit: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure Bbt_inserirClick(Sender: TObject);
    procedure Bbt_excluirClick(Sender: TObject);
    procedure Bbt_confirmarClick(Sender: TObject);
    procedure Bbt_cancelarClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadServico: TFrmCadServico;

implementation

{$R *.dfm}

procedure TFrmCadServico.Bbt_cancelarClick(Sender: TObject);
begin
  Bbt_inserir.Enabled:= True;
  Bbt_cancelar.Enabled:= False;
  Bbt_confirmar.Enabled:= False;
  Bbt_excluir.Enabled:= True;

  PnlPecas.Enabled:= False;

  DM.ADODSServico_Pecas.Cancel;
end;

procedure TFrmCadServico.Bbt_confirmarClick(Sender: TObject);
begin
  validarCampo(DBEdit4, Label7.Caption);
  validarCampo(DBEdit6, Label9.Caption);
  validarCampo(DBEdit7, Label10.Caption);

  Bbt_inserir.Enabled:= True;
  Bbt_cancelar.Enabled:= False;
  Bbt_confirmar.Enabled:= False;
  Bbt_excluir.Enabled:= True;

  PnlPecas.Enabled:= False;

  DM.ADODSServico_Pecas.Post;
end;

procedure TFrmCadServico.Bbt_excluirClick(Sender: TObject);
begin
  Bbt_inserir.Enabled:= True;
  Bbt_cancelar.Enabled:= False;
  Bbt_confirmar.Enabled:= False;
  Bbt_excluir.Enabled:= True;

  PnlPecas.Enabled:= False;

  DM.ADODSServico_Pecas.Delete;
end;

procedure TFrmCadServico.Bbt_inserirClick(Sender: TObject);
begin
  Bbt_inserir.Enabled:= False;
  Bbt_cancelar.Enabled:= True;
  Bbt_confirmar.Enabled:= True;
  Bbt_excluir.Enabled:= False;

  PnlPecas.Enabled:= True;

  DM.ADODSServico_Pecas.Insert;
end;

procedure TFrmCadServico.btn_salvarClick(Sender: TObject);
begin
  validarCampo(DBEdit1, Label2.Caption);
  validarCampo(DBEdit2, Label3.Caption);
  validarCampo(DBEdit3, Label6.Caption);
  validarCombo(DBComboBox1, Status.Caption);
  validarCampo(DBEdit5, Label8.Caption);
  inherited;
  PnlFicha.Enabled:= True;
  Bbt_inserir.Enabled:= True;
    inherited;
end;

procedure TFrmCadServico.DBEdit3Enter(Sender: TObject);
begin
  DM.ADODSServico.FieldByName('data_inicio').EditMask:= '99/99/9999;1;_';
end;

procedure TFrmCadServico.DBEdit7Exit(Sender: TObject);
begin
  if DM.ADODSServico_Pecasqtde.AsInteger < 1 then
  begin
    ShowMessage('A quantidade deve ser maior que 1');
    DBEdit7.SetFocus;
  end
  else
    DM.ADODSServico_Pecasvalor_total.AsFloat:= DM.ADODSServico_Pecasvalor_unit.AsFloat *  DM.ADODSServico_Pecasqtde.AsInteger;
end;

procedure TFrmCadServico.FormActivate(Sender: TObject);
begin
  ADOQueryCarro.Close;
  ADOQueryCarro.Open;

  ADOQueryEmpresa.Close;
  ADOQueryEmpresa.Open;

  ADOQueryPeca.Close;
  ADOQueryPeca.Open;

  DM.ADODSServico_Pecas.Close;
  DM.ADODSServico_Pecas.Open;

  if DM.ADODSServico.State in [dsInsert] then
    Bbt_inserir.Enabled:= False
  else
    Bbt_inserir.Enabled:= True;
  Bbt_cancelar.Enabled:= False;
  Bbt_confirmar.Enabled:= False;
  Bbt_excluir.Enabled:= False;
  PnlPecas.Enabled:= False;
end;

end.
