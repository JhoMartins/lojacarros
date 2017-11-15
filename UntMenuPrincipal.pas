unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntManCliente,
  Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrmMenuPrincipal = class(TForm)
    Button1: TButton;
    ImageList1: TImageList;
    cad_cliente: TAction;
    cad_carro: TAction;
    cad_empresa: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;

    sair: TAction;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    ActionList1: TActionList;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

{$R *.dfm}

uses UntCadCliente, UntDM;

procedure TFrmMenuPrincipal.Button1Click(Sender: TObject);
begin
  FrmManCliente.ShowModal;
end;

procedure TFrmMenuPrincipal.FormActivate(Sender: TObject);
begin
windowstate :=  wsMaximized;

statusbar1.panels[1].text:= formatdatetime(' dddd ", " dd " de " mmmm " de " yyyy', now);
end;

procedure TFrmMenuPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var confSaida: integer;
begin
   confSaida:= application.MessageBox('Tem certeza que deseja sair do sistema?',
   'Atenção', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

   if confSaida = IDYES then
    application.Terminate
   else
    canclose:=false;

end;

procedure TFrmMenuPrincipal.sairExecute(Sender: TObject);
begin
close;
end;

procedure TFrmMenuPrincipal.Timer1Timer(Sender: TObject);
begin
statusbar1.panels[0].Text:= timetostr(time);
end;

end.
