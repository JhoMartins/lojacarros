unit UntCadServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM, Data.DB, Data.Win.ADODB;

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
    procedure FormActivate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadServico: TFrmCadServico;

implementation

{$R *.dfm}

procedure TFrmCadServico.btn_salvarClick(Sender: TObject);
begin
  if DBComboBox1.ItemIndex = 2 then
    DM.ADODSServicofinalizado_em.AsDateTime := Date;
  inherited;

end;

procedure TFrmCadServico.FormActivate(Sender: TObject);
begin
  ADOQueryCarro.Close;
  ADOQueryCarro.Open;

  ADOQueryEmpresa.Close;
  ADOQueryEmpresa.Open;
end;

end.
