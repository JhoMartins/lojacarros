unit UntRelEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFrmRelEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtNomede: TLabeledEdit;
    EdtNomeate: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQueryEmpresa: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    edtCidade: TLabeledEdit;
    RadioGroup1: TRadioGroup;
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
  with ADOQueryEmpresa.Sql do
    begin
    Clear;
    add('select * from Empresa ');
    if edtNomede.Text <> '' then
      begin
        add(strliga+'nome_fantasia >= ''' + edtNomede.Text + '''');
        strliga:= ' and ';
      end;
    if edtNomeate.Text <>'' then
      begin
        add(strliga+'nome_fantasia <= ''' + edtNomede.Text + 'zzz''');
        strliga:= ' and ';
      end;
    if edtCidade.Text <> '' then
      begin
       add(strliga+'cidade = ''' + edtCidade.Text + '''');
       strliga:= ' and ';
      end;

      case
        Radiogroup1.itemindex of
        0: add(' order by nome_fantasia');
        1: add(' order by cidade');
      end;
    end;
  ADOQueryEmpresa.Open;
  frxreport1.ShowReport();
end;




procedure TFrmRelEmpresa.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
