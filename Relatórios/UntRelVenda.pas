unit UntRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelvenda = class(TForm)
    Panel1: TPanel;
    ADOQueryVenda: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  FrmRelvenda: TFrmRelvenda;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelvenda.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryVenda.Close;
  with ADOQueryVenda.SQL do
  begin
    Clear;
    Add('select V.*, C.nome as Cliente, Car.modelo as Modelo, F.nome as Funcionario from Venda V inner join Cliente C on V.cliente_id = C.id inner join Carro Car on V.carro_id = Car.id inner join Funcionario F on V.funcionario_id = F.id ');

    if EdtCodigoDe.Text <> '' then
    try
      StrToInt(EdtCodigoDe.Text);
      Add(StrLiga + 'id >= '+ EdtCodigoDe .Text);
      StrLiga:= 'and ';
    except
      on EConvertError do;
    end;

    if EdtCodigoAte.Text <> '' then
    try
      StrToInt(EdtCodigoAte.Text);
      Add(StrLiga + 'id <= '+ EdtCodigoAte.Text);
    except
      on EConvertError do;
    end;
    if EdtNomede.Text <> '' then
    try
      Add(StrLiga + 'f.nome >= '''+ EdtNomeDe.Text + '''');
      strliga:= ' and ';
    except
      on EConvertError do;
    end;

     if EdtNomeate.Text <> '' then
    try
      Add(StrLiga + 'f.nome <= '''+ EdtNomeate.Text + 'zzz''');
      Strliga:= ' and ';
    except
      on EConvertError do;
    end;

    case RadioGroup1.ItemIndex of
    0: add(' order by id ');
    1: add(' order by valor ');
    2: add(' order by data ')
    end;
  end;
  ADOQueryVenda.Open;
  frxReport1.ShowReport();
end;


procedure TFrmRelvenda.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
