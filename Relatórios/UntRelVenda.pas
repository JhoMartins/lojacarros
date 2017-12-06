unit UntRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  Data.Win.ADODB, Vcl.ExtCtrls;

type
  TFrmRelvenda = class(TForm)
    Panel1: TPanel;
    ADOQueryVenda: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelvenda: TFrmRelvenda;

implementation

{$R *.dfm}

uses UntDM;

end.
