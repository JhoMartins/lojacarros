unit UntManCarro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList, Data.Win.ADODB, UntCadBase,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM;

type
  TFrmManCarro = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManCarro: TFrmManCarro;

implementation

{$R *.dfm}

uses UntRelCarros;

{ TFrmManCarro }

constructor TFrmManCarro.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'SELECT * FROM Carro ORDER BY modelo';
end;

procedure TFrmManCarro.ToolButton5Click(Sender: TObject);
begin
  inherited;
frmrelcarro.showmodal;
end;

end.
