unit UntDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODSCliente: TADODataSet;
    DSCliente: TDataSource;
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
    ADODSFuncionario: TADODataSet;
    DSFuncionario: TDataSource;
    ADODSCarro: TADODataSet;
    DSCarro: TDataSource;
    ADODSVenda: TADODataSet;
    DSVenda: TDataSource;
    ADODSServico: TADODataSet;
    DSServico: TDataSource;
    ADODSServicoid: TAutoIncField;
    ADODSServicodescricao: TStringField;
    ADODSServicodata_inicio: TWideStringField;
    ADODSServicodata_fim: TWideStringField;
    ADODSServicostatus: TStringField;
    ADODSServicocarro_id: TIntegerField;
    ADODSServicoempresa_id: TIntegerField;
    ADODSServicofinalizado_em: TWideStringField;
    ADODSServicovalor: TBCDField;
    ADODSClienteid: TAutoIncField;
    ADODSClientenome: TStringField;
    ADODSClientecpf: TStringField;
    ADODSClientedata_nascimento: TWideStringField;
    ADODSClienteendereco: TStringField;
    ADODSClientebairro: TStringField;
    ADODSClientecidade: TStringField;
    ADODSClienteestado: TStringField;
    ADODSClientecep: TStringField;
    ADODSClienteprofissao: TStringField;
    ADODSClienterenda_mensal: TBCDField;
    ADODSClientecelular: TStringField;
    ADODSPeca: TADODataSet;
    DSPeca: TDataSource;
    ADODSPecaid: TAutoIncField;
    ADODSPecanome: TStringField;
    ADODSPecadescricao: TStringField;
    ADODSPecavalor_unit: TBCDField;
    ADODSCarroid: TAutoIncField;
    ADODSCarromodelo: TStringField;
    ADODSCarromarca: TStringField;
    ADODSCarrodata_compra: TWideStringField;
    ADODSCarrovalor_compra: TBCDField;
    ADODSCarroexproprietario_id: TIntegerField;
    ADODSCarrocor: TStringField;
    ADODSCarrostatus: TStringField;
    ADODSVendaid: TAutoIncField;
    ADODSVendacarro_id: TIntegerField;
    ADODSVendacliente_id: TIntegerField;
    ADODSVendafuncionario_id: TIntegerField;
    ADODSVendavalor: TBCDField;
    ADODSVendadata: TWideStringField;
    ADODSVendaforma_pagamento: TStringField;
    ADODSFuncionarioid: TAutoIncField;
    ADODSFuncionarionome: TStringField;
    ADODSFuncionariocpf: TStringField;
    ADODSFuncionariodata_nascimento: TWideStringField;
    ADODSFuncionarioendereco: TStringField;
    ADODSFuncionariobairro: TStringField;
    ADODSFuncionariocidade: TStringField;
    ADODSFuncionariocep: TStringField;
    ADODSFuncionarioestado: TStringField;
    ADODSFuncionariocelular: TStringField;
    ADODSFuncionariosalario: TBCDField;
    ADODSFuncionariodata_admissao: TWideStringField;
    procedure ADODSCarroexproprietario_idValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntCadCarro;

{$R *.dfm}

procedure TDM.ADODSCarroexproprietario_idValidate(Sender: TField);
begin
  if not FrmCadCarro.ADOQueryCliente.Locate('ID', ADODSCarroexproprietario_id.AsString, []) then
  begin
    MessageDlg('Cliente não encontrado', mtError, [mbOK], 0);
    Abort;
  end;

end;

end.
