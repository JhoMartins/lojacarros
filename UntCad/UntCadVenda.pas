unit UntCadVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM, Data.DB, Data.Win.ADODB;

type
  TFrmCadVenda = class(TFrmCadBase)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Cliente_ID: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    ADOQueryCarro: TADOQuery;
    DSCarro: TDataSource;
    ADOQueryCliente: TADOQuery;
    DSCliente: TDataSource;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Nome: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    ADOQueryFuncionario: TADOQuery;
    DSFuncionario: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVenda: TFrmCadVenda;

implementation

{$R *.dfm}

procedure TFrmCadVenda.btn_salvarClick(Sender: TObject);
begin
  validarCampo(DBEdit2, Label2.Caption);
  validarCampo(DBEdit3, Cliente_ID.Caption);
  validarCampo(DBEdit1, Label6.Caption);
  validarCampo(DBEdit4, Label7.Caption);
  validarCombo(DBComboBox1, Label5.Caption);
  inherited;
end;

procedure TFrmCadVenda.FormActivate(Sender: TObject);
begin
  ADOQueryCarro.Close;
  ADOQueryCarro.Open;

  ADOQueryCliente.Close;
  ADOQueryCliente.Open;

  ADOQueryFuncionario.Close;
  ADOQueryFuncionario.Open;
end;

end.
