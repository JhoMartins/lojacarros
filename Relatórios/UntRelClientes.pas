unit UntRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmRelClientes = class(TForm)
    Panel2: TPanel;
    ADOQueryCliente: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtcodigoate: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtcodigode: TLabeledEdit;
    edtnomede: TLabeledEdit;
    edtnomeate: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelClientes: TFrmRelClientes;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmRelClientes.BitBtn1Click(Sender: TObject);
var StrLiga: String;
begin
  StrLiga:= 'where ';

  ADOQueryCliente.Close;
  with ADOQueryCliente.SQL do
  begin
    Clear;
    Add('select * from Cliente ');

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
    2: add(' order by renda_mensal desc ')
    end;
  end;
  ADOQueryCliente.Open;
  frxReport1.ShowReport();
end;
procedure TFrmRelClientes.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
