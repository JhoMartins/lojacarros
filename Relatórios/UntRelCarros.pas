unit UntRelCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  frxClass, frxDBSet, Data.DB, Data.Win.ADODB;

type
  TFrmRelCarro = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQueryCarro: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtcodigode: TLabeledEdit;
    edtcodigoate: TLabeledEdit;
    edtmarcade: TLabeledEdit;
    edtmarcaate: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCarro: TFrmRelCarro;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelCarro.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryCarro.Close;
  with ADOQueryCarro.SQL do
  begin
    Clear;
    Add('SELECT Carro.id, Carro.modelo, Carro.marca, Carro.data_compra, ' +
    ' Carro.valor_compra, Cliente.nome as Ex_Proprietário, ' +
    ' Carro.cor, Carro.status FROM Carro ' +
    ' INNER JOIN Cliente ON Carro.exproprietario_id = Cliente.id ');

    if EdtCodigoDe.Text <> '' then
    try
      StrToInt(EdtCodigoDe.Text);
      Add(StrLiga + 'carri.id >= '+ EdtCodigoDe .Text);
      StrLiga:= 'and ';
    except
      on EConvertError do;
    end;

    if EdtCodigoAte.Text <> '' then
    try
      StrToInt(EdtCodigoAte.Text);
      Add(StrLiga + 'carro.id <= '+ EdtCodigoAte.Text);
    except
      on EConvertError do;
    end;
    if Edtmarcade.Text <> '' then
    try
      Add(StrLiga + 'marca >= '''+ EdtmarcaDe.Text + '''');
      strliga:= ' and ';
    except
      on EConvertError do;
    end;

     if Edtmarcaate.Text <> '' then
    try
      Add(StrLiga + 'marca <= '''+ Edtmarcaate.Text + 'zzz''');
      Strliga:= ' and ';
    except
      on EConvertError do;
    end;

    case RadioGroup1.ItemIndex of
    0: add(' order by ID ');
    1: add(' order by valor ');
    2: add(' order by data_compra ');
    end;
  end;
  ADOQueryCarro.Open;
  frxReport1.ShowReport();
end;


end.
