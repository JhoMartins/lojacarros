unit UntRelFuncionário;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelFuncionario = class(TForm)
    Panel1: TPanel;
    ADOQueryFuncionario: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtcodigode: TLabeledEdit;
    edtcodigoate: TLabeledEdit;
    edtnomede: TLabeledEdit;
    edtnomeate: TLabeledEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFuncionario: TFrmRelFuncionario;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelFuncionario.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryFuncionario.Close;
  with ADOQueryFuncionario.SQL do
  begin
    Clear;
    Add('select * from Funcionario ');

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
    2: add(' order by salario desc ');
    3: add(' order by data_admissao ');
    end;
  end;
  ADOQueryFuncionario.Open;
  frxReport1.ShowReport();
end;


procedure TFrmRelFuncionario.Button1Click(Sender: TObject);
begin
close;
end;

end.
