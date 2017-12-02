unit UntRelEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelEmpresa = class(TForm)
    Panel1: TPanel;
    ADOQueryEmpresa: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtnomede: TLabeledEdit;
    edtnomeate: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtcodigode: TLabeledEdit;
    edtcodigoate: TLabeledEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEmpresa: TFrmRelEmpresa;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelEmpresa.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryEmpresa.Close;
  with ADOQueryEmpresa.SQL do
  begin
    Clear;
    Add('select * from Empresa ');

    if EdtCodigoDe.Text <> '' then
    try
      StrToInt(EdtCodigoDe.Text);
      Add(StrLiga + 'ID >= '+ EdtCodigoDe.Text);
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
      Add(StrLiga + 'nome_fantasia >= '''+ EdtNomeDe.Text + '''');
      strliga:= ' and ';
    except
      on EConvertError do;
    end;

     if EdtNomeate.Text <> '' then
    try
      Add(StrLiga + 'nome_fantasia <= '''+ EdtNomeate.Text + 'zzz''');
      Strliga:= ' and ';
    except
      on EConvertError do;
    end;

    case RadioGroup1.ItemIndex of
    0: add(' order by ID ');
    1: add(' order by nome_fantasia ');
    end;

    end;
    ADOQueryEmpresa.Open;
    frxReport1.ShowReport();
 end;



procedure TFrmRelEmpresa.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
