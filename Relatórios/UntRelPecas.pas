unit UntRelPecas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelPecas = class(TForm)
    ADOQueryPeca: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    edtcodigode: TLabeledEdit;
    edtcodigoate: TLabeledEdit;
    edtnomede: TLabeledEdit;
    edtnomeate: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPecas: TFrmRelPecas;

implementation

{$R *.dfm}

uses UntDM, UntManPeca;

procedure TFrmRelPecas.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryPeca.Close;
  with ADOQueryPeca.SQL do
  begin
    Clear;
    Add('select * from Peca ');

    if EdtCodigoDe.Text <> '' then
    try
      StrToInt(EdtCodigoDe.Text);
      Add(StrLiga + 'ID >= '+ EdtCodigoDe .Text);
      StrLiga:= 'and ';
    except
      on EConvertError do;
    end;

    if EdtCodigoAte.Text <> '' then
    try
      StrToInt(EdtCodigoAte.Text);
      Add(StrLiga + 'ID <= '+ EdtCodigoAte.Text);
    except
      on EConvertError do;
    end;
    if EdtNomede.Text <> '' then
    try
      Add(StrLiga + 'nome >= '''+ EdtNomeDe.Text + '''');
      strliga:= ' and ';
    except
      on EConvertError do;
    end;

     if EdtNomeate.Text <> '' then
    try
      Add(StrLiga + 'nome <= '''+ EdtNomeate.Text + 'zzz''');
      Strliga:= ' and ';
    except
      on EConvertError do;
    end;

    case RadioGroup1.ItemIndex of
    0: add(' order by ID ');
    1: add(' order by nome ');
    2: add(' order by valor_unit desc ')
    end;
  end;
  ADOQueryPeca.Open;
  frxReport1.ShowReport();
end;

procedure TFrmRelPecas.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
