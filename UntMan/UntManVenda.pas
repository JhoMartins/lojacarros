unit UntManVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, UntManBase, Data.Win.ADODB,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TFrmManVenda = class(TFrmManBase)
    constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManVenda: TFrmManVenda;

implementation

{$R *.dfm}

constructor TFrmManVenda.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
   SQL:= 'SELECT * FROM Venda ORDER BY data DESC';
end;

end.
