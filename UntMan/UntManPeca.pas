unit UntManPeca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UntDM,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Data.Win.ADODB, UntCadBase;

type
  TFrmManPeca = class(TFrmManBase)
    Edit2: TEdit;
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManPeca: TFrmManPeca;

implementation

{$R *.dfm}

{ TFrmManBase1 }

constructor TFrmManPeca.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM peca ORDER BY nome';
end;

end.
