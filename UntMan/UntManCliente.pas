unit UntManCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList, Data.Win.ADODB, UntCadBase,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls;

type
  TFrmManCliente = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManCliente: TFrmManCliente;

implementation

{$R *.dfm}

{ TFrmManCliente }

constructor TFrmManCliente.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM Cliente ORDER BY nome';
end;

end.
