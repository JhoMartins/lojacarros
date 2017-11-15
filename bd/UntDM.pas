unit UntDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODSCliente: TADODataSet;
    DSCliente: TDataSource;
    ADODSClienteid: TAutoIncField;
    ADODSClientenome: TStringField;
    ADODSClientecpf: TStringField;
    ADODSClientedata_nasc: TWideStringField;
    ADODSClienteEndereço: TStringField;
    ADODSClientebairro: TStringField;
    ADODSClientecelular: TStringField;
    ADODSClienteprofissao: TStringField;
    ADODSClientesalario: TBCDField;
    ADODSClienteempresa: TStringField;
    ADODSClientetel_empresa: TStringField;
    ADODSEmpresa: TADODataSet;
    ADODSEmpresaid: TAutoIncField;
    ADODSEmpresarazao_social: TStringField;
    ADODSEmpresanome_fantasia: TStringField;
    ADODSEmpresacnpj: TStringField;
    ADODSEmpresaendereco: TStringField;
    ADODSEmpresabairro: TStringField;
    ADODSEmpresacidade: TStringField;
    ADODSEmpresaestado: TStringField;
    ADODSEmpresacep: TStringField;
    ADODSEmpresatelefone: TStringField;
    DSEmpresa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
