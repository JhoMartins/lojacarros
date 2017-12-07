unit UntServicosPeca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelServicopecas = class(TForm)
    Panel1: TPanel;
    ADOQueryServico: TADOQuery;
    DSControla: TDataSource;
    ADOQueryServicoPecas: TADOQuery;
    ADOQueryServicoid: TAutoIncField;
    ADOQueryServicodescricao: TStringField;
    ADOQueryServicodata_inicio: TWideStringField;
    ADOQueryServicodata_fim: TWideStringField;
    ADOQueryServicostatus: TStringField;
    ADOQueryServicomodelo: TStringField;
    ADOQueryServiconome_fantasia: TStringField;
    ADOQueryServicoendereco: TStringField;
    ADOQueryServicotelefone: TStringField;
    ADOQueryServicoPecasnome: TStringField;
    ADOQueryServicoPecasdescricao: TStringField;
    ADOQueryServicoPecasqtde: TIntegerField;
    ADOQueryServicoPecasvalor_total: TBCDField;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelServicopecas: TFrmRelServicopecas;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelServicopecas.BitBtn1Click(Sender: TObject);
begin
ADOQueryServico.Close;
ADOQueryServicopecas.Close;
with ADOQueryServico.SQL do
  begin
    clear;
    add( ' SELECT Servico.id, Servico.descricao, Servico.data_inicio, ' +
         ' Servico.data_fim, Servico.status, Carro.modelo, Empresa.nome_fantasia, ' +
         ' Empresa.endereco, Empresa.telefone ' +
         ' FROM Servico INNER JOIN ' +
         '   Carro ON Servico.carro_id = Carro.id INNER JOIN  '+
         ' Empresa ON Servico.empresa_id = Empresa.id ');
         if LabeledEdit1.Text <> '' then
         try
          strtoint(LabeledEdit1.Text);
          add('where servico.id = ' + LabeledEdit1.Text);
          except
          on EconvertError do;
          end;
  end;
      ADOQueryServico.Open;
      ADOQueryServicopecas.Open;
      frxreport1.showreport();

end;

end.
