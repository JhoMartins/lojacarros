unit UntManServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntManBase, Data.DB, System.ImageList, Data.Win.ADODB,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, UntCadBase,
  Vcl.ExtCtrls, UntCadServico, UntDM;

type
  TFrmManServico = class(TFrmManBase)
  constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
    procedure ToolButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManServico: TFrmManServico;

implementation

{$R *.dfm}

uses UntServicosPeca;

{ TFrmManDespesa }

constructor TFrmManServico.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
  SQL:= 'select S.*, E.nome_fantasia, C.modelo from Servico S inner join Carro C on S.carro_id = C.id inner join Empresa E on S.empresa_id = E.id order by S.data_inicio desc;'
end;

procedure TFrmManServico.ToolButton5Click(Sender: TObject);
begin
  inherited;
frmrelservicopecas.showmodal;
end;

end.
