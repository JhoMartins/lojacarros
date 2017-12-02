unit UntCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, System.ImageList, UntDM,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadEmpresa = class(TFrmCadBase)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    procedure btn_salvarClick(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresa: TFrmCadEmpresa;

implementation

{$R *.dfm}

procedure TFrmCadEmpresa.btn_salvarClick(Sender: TObject);
begin
  validarCampo(DBEdit1, Label2.Caption);
  validarCampo(DBEdit2, Label3.Caption);
  validarCampo(DBEdit3, Label4.Caption);
  validarCampo(DBEdit4, Label5.Caption);
  validarCampo(DBEdit5, Label6.Caption);
  validarCampo(DBEdit6, Label7.Caption);
  validarCampo(DBEdit7, Label9.Caption);
  validarCombo(DBComboBox1, Label8.Caption);
  validarCampo(DBEdit8, Label11.Caption);
  inherited;
end;

procedure TFrmCadEmpresa.DBEdit3Enter(Sender: TObject);
begin
  DM.ADODSEmpresa.FieldByName('cnpj').EditMask:= '99.999.999/9999-99;1;_'
end;


procedure TFrmCadEmpresa.DBEdit7Enter(Sender: TObject);
begin
  DM.ADODSEmpresa.FieldByName('cep').EditMask:= '99999-999;1;_'
end;

procedure TFrmCadEmpresa.DBEdit8Enter(Sender: TObject);
begin
  DM.ADODSEmpresa.FieldByName('telefone').EditMask:= '(99) 9999-9999;1;_'
end;

end.
