unit UntCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBase: TFrmCadBase;

implementation

{$R *.dfm}

end.
