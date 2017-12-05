unit UntManVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, UntManBase, Data.Win.ADODB,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, UntDM, UntCadVenda;

type
  TFrmManVenda = class(TFrmManBase)
    constructor Create(DataSet: TADODataSet; Form: TFrmCadBase); override;
    procedure btn_inserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManVenda: TFrmManVenda;

implementation

{$R *.dfm}

procedure TFrmManVenda.btn_inserirClick(Sender: TObject);
begin
    DM.ADODSVenda.Insert;
    DM.ADODSVendadata.AsDateTime := Date;
    FrmCadVenda.Create(DM.ADODSVenda);
    FrmCadVenda.btn_salvar.Enabled:= true;
    FrmCadVenda.btn_cancelar.enabled:= true;
    FrmCadVenda.btn_sair.enabled:= false;
    FrmCadVenda.pnlficha.enabled:= true;
    FrmCadVenda.ShowModal;
end;

constructor TFrmManVenda.Create(DataSet: TADODataSet; Form: TFrmCadBase);
begin
  inherited;
   SQL:= 'select V.*, C.nome as Cliente, Car.modelo as Modelo, F.nome as Funcionario from Venda V inner join Cliente C on V.cliente_id = C.id inner join Carro Car on V.carro_id = Car.id inner join Funcionario F on V.funcionario_id = F.id';
end;

end.
