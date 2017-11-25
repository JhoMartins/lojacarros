unit UntCadVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntCadBase, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, UntDM, Data.DB, Data.Win.ADODB;

type
  TFrmCadVenda = class(TFrmCadBase)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Cliente_ID: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    ADOQueryCarro: TADOQuery;
    DSCarro: TDataSource;
    ADOQueryCliente: TADOQuery;
    DSCliente: TDataSource;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVenda: TFrmCadVenda;

implementation

{$R *.dfm}

end.
