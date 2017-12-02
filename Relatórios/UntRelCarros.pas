unit UntRelCarros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  frxClass, frxDBSet, Data.DB, Data.Win.ADODB;

type
  TFrmRelCarro = class(TForm)
    Panel2: TPanel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQueryCarro: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCarro: TFrmRelCarro;

implementation

{$R *.dfm}

uses UntDM;

end.
