unit UntManBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,  Data.Win.ADODB,
  UntCadCliente, Vcl.ExtCtrls, UntDM, UntCadBase;

type
  TFrmManBase = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_inserir: TToolButton;
    btn_alterar: TToolButton;
    btn_excluir: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    btn_sair: TToolButton;
    ImageList1: TImageList;
    ImageList3: TImageList;
    ImageList2: TImageList;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    procedure btn_sairClick(Sender: TObject);
    constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); virtual;
    procedure btn_inserirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
   FForm: TFrmCadBase;
   FDataSet: TADODataSet;
  public
   SQL: String;
    { Public declarations }
  end;

var
  FrmManBase: TFrmManBase;

implementation

{$R *.dfm}

procedure TFrmManBase.btn_alterarClick(Sender: TObject);
begin
  FDataSet.Edit;
  FForm.Create(FDataSet);
  FForm.btn_salvar.enabled:= true;
  FForm.btn_cancelar.enabled:= true;
  FForm.btn_sair.enabled:= false;
  FForm.pnlficha.enabled:= true;
  FForm.ShowModal;
end;

procedure TFrmManBase.btn_excluirClick(Sender: TObject);
var confExcl: integer;
begin
  confExcl:= Application.MessageBox('Confirma a Exclusão deste Registro?',
  'Atenção',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);
  if confExcl = IDYES then
  begin
    FDataSet.Delete;
    Application.MessageBox('O registro foi excluido com Sucesso.', 'Informação',MB_OK+MB_ICONINFORMATION);
  end
  else
    Application.MessageBox('A exclusão do registro foi abortada.', 'Informação', MB_OK+MB_ICONERROR);

end;


procedure TFrmManBase.btn_inserirClick(Sender: TObject);
begin
  FDataSet.Insert;
  FForm.Create(FDataSet);
  FForm.btn_salvar.Enabled:= true;
  FForm.btn_cancelar.enabled:= true;
  FForm.btn_sair.enabled:= false;
  FForm.pnlficha.enabled:= true;
  FForm.ShowModal;
end;

procedure TFrmManBase.btn_sairClick(Sender: TObject);
begin
  Close;
end;

constructor TFrmManBase.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  FDataSet := DataSet;
  FForm:= Form;
end;

procedure TFrmManBase.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    FDataSet.Locate(ComboBox1.Text, Edit1.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrmManBase.FormActivate(Sender: TObject);
begin
  FDataSet.Close;
  FDataSet.CommandText:= SQL;
  FDataSet.Open;
end;

end.
