unit UntCadPeca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, UntDM;

type
  TFrmCadPeca = class(TFrmCadBase)
    Nome: TLabel;
    DBEdit1: TDBEdit;
    Descrição: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPeca: TFrmCadPeca;

implementation

{$R *.dfm}

procedure TFrmCadPeca.btn_salvarClick(Sender: TObject);
begin
  validarCampo(DBEdit1, Nome.Caption);
  validarCampo(DBEdit2, Descrição.Caption);
  validarCampo(DBEdit3, Label2.Caption);
  inherited;
end;

end.
