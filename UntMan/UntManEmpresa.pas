unit UntManEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM, UntCadCliente, Data.Win.ADODB, UntCadBase;

type
  TFrmManEmpresa = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManEmpresa: TFrmManEmpresa;

implementation

{$R *.dfm}

uses UntRelEmpresa;

{ TFrmManEmpresa }

constructor TFrmManEmpresa.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM Empresa ORDER BY nome_fantasia';
end;

procedure TFrmManEmpresa.ToolButton5Click(Sender: TObject);
begin
  inherited;
frmrelempresa.showmodal;
end;

end.
