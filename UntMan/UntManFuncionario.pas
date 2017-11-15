unit UntManFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList, Data.Win.ADODB, UntCadBase,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM;

type
  TFrmManFuncionario = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManFuncionario: TFrmManFuncionario;

implementation

{$R *.dfm}

{ TFrmManFuncionario }

constructor TFrmManFuncionario.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM Funcionario ORDER BY nome';
end;

end.
