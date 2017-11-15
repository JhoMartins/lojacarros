unit UntCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList, Data.Win.ADODB,
  Vcl.ImgList, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, UntDM;

type
  TFrmCadBase = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    ToolButton4: TToolButton;
    btn_sair: TToolButton;
    PnlFicha: TPanel;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    StatusBar1: TStatusBar;
    constructor Create(DataSet: TADODataSet); virtual;
    procedure btn_sairClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    FDataSet: TADODataSet;
  public
    { Public declarations }
  end;

var
  FrmCadBase: TFrmCadBase;

implementation

{$R *.dfm}

{ TFrmCadBase }

procedure TFrmCadBase.btn_cancelarClick(Sender: TObject);
begin
  FDataSet.Cancel;

  Application.MessageBox('A inclusão ou alteração foi abortada.', 'Atenção', MB_OK+MB_ICONERROR);

  btn_salvar.Enabled:= False;
  btn_cancelar.Enabled:= False;
  btn_Sair.Enabled:= True;
  PnlFicha.Enabled:= False;
end;

procedure TFrmCadBase.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadBase.btn_salvarClick(Sender: TObject);
begin
  FDataSet.Post;

  Application.MessageBox('O Registro foi incluído ou alterado com sucesso.', 'Informação', MB_OK+MB_ICONINFORMATION);

  btn_salvar.Enabled:= False;
  btn_cancelar.Enabled:= False;
  btn_Sair.Enabled:= True;
  PnlFicha.Enabled:= False;
end;

constructor TFrmCadBase.Create(DataSet: TADODataSet);
begin
  FDataSet:= DataSet;
end;

end.
