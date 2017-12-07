unit UntCadCarro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntDM, UntCadBase, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TFrmCadCarro = class(TFrmCadBase)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    ADOQueryCliente: TADOQuery;
    DSCliente: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCarro: TFrmCadCarro;

implementation

{$R *.dfm}

procedure TFrmCadCarro.btn_salvarClick(Sender: TObject);
begin
  validarCampo(DBEdit1, Label2.Caption);
  validarCampo(DBEdit2, Label3.Caption);
  validarCampo(DBEdit7, Label9.Caption);
  validarCampo(DBEdit4, Label5.Caption);
  validarCampo(DBEdit5, Label7.Caption);
  validarCampo(DBEdit6, Label8.Caption);
  inherited;
end;

procedure TFrmCadCarro.DBEdit4Enter(Sender: TObject);
begin
  DM.ADODSCarro.FieldByName('data_compra').EditMask:= '99/99/9999;1;_';
end;

procedure TFrmCadCarro.FormActivate(Sender: TObject);
begin
  ADOQueryCliente.Close;
  ADOQueryCliente.Open;
end;

end.
