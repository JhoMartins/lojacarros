unit UntManCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList, Data.Win.ADODB, UntCadBase,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM;

type
  TFrmManCliente = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManCliente: TFrmManCliente;

implementation

{$R *.dfm}

uses UntRelClientes;

{ TFrmManCliente }

constructor TFrmManCliente.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM Cliente ORDER BY nome';
end;

procedure TFrmManCliente.ToolButton5Click(Sender: TObject);
begin
  inherited;
frmrelclientes.showmodal;
end;

end.
