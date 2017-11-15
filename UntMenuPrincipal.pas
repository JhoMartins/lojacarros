unit UntMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntCadCliente, UntManFuncionario, UntCadFuncionario, UntDM;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UntManEmpresa, UntManCliente, UntCadEmpresa;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FrmManCliente.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
var Frm: TFrmManEmpresa;
begin
  Frm := FrmManEmpresa.Create(DM.ADODSEmpresa, FrmCadEmpresa);
  Frm.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
var Frm: TFrmManFuncionario;
begin
  Frm:= FrmManFuncionario.Create(DM.ADODSFuncionario, FrmCadFuncionario);
  Frm.ShowModal;
end;

end.
