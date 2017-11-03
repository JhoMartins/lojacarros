unit UntManCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,db,
  Vcl.DBGrids;

type
  TFrmManCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ToolBar1: TToolBar;
    btn_inserir: TToolButton;
    btn_alterar: TToolButton;
    btn_excluir: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    btn_sair: TToolButton;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    procedure btn_sairClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btn_inserirClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManCliente: TFrmManCliente;

implementation

{$R *.dfm}

uses UntDM, UntCadCliente;

procedure TFrmManCliente.btn_alterarClick(Sender: TObject);
begin
  DM.ADODSCliente.Edit;
  FrmCadCliente.btn_salvar.enabled:= true;
  FrmCadCliente.btn_cancelar.enabled:= true;
  FrmCadCliente.btn_sair.enabled:= false;
  FrmCadCliente.pnlficha.enabled:= true;
  FrmCadCliente.ShowModal;
end;

procedure TFrmManCliente.btn_excluirClick(Sender: TObject);
  var confExcl: integer;
    begin
    confExcl:= Application.MessageBox('Confirma a Exclusão deste Registro?',
      'Atenção',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

      if confExcl = IDYES then
        begin
        DM.ADODSCliente.Delete;
        Application.MessageBox('O registro foi excluido com Sucesso.',
          'Informação',MB_OK+MB_ICONINFORMATION);
        end
        else
          Application.MessageBox('A exclusão do registro foi abortada.',
            'Informação', MB_OK+MB_ICONERROR);

    end;

procedure TFrmManCliente.btn_inserirClick(Sender: TObject);
begin
  DM.ADODSCliente.Insert;
  FrmCadCliente.btn_salvar.enabled:= true;
  FrmCadCliente.btn_cancelar.enabled:= true;
  FrmCadCliente.btn_sair.enabled:= false;
  FrmCadCliente.pnlficha.enabled:= true;
  FrmCadCliente.ShowModal;
end;

procedure TFrmManCliente.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmManCliente.Edit1Change(Sender: TObject);
begin
  DM.ADODSCliente.Locate('nome',Edit1.Text,[loCaseInsensitive,lopartialkey]);
end;

procedure TFrmManCliente.FormActivate(Sender: TObject);
begin
DM.ADODSCliente.Close;
DM.ADODSCliente.CommandText:= '';
DM.ADODSCliente.CommandText:= 'select * from Cliente order by nome';
DM.ADODSCliente.open;
end;

end.
