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
    DSServico_Pecas: TDataSource;
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
    ADODSServico_Pecas: TADODataSet;
    ADODSServico_Pecasservico_id: TIntegerField;
    ADODSServico_Pecaspeca_id: TIntegerField;
    ADODSServico_Pecasqtde: TIntegerField;
    ADODSServico_Pecasvalor_total: TBCDField;
    ADODSServico_Pecasvalor_unit: TBCDField;
    ADODSServico_PecasNomePeca: TStringField;
    ADODSCarroid: TAutoIncField;
    ADODSCarromodelo: TStringField;
    ADODSCarromarca: TStringField;
    ADODSCarrodata_compra: TWideStringField;
    ADODSCarrovalor_compra: TWideStringField;
    ADODSCarroexproprietario_id: TIntegerField;
    ADODSCarrocor: TStringField;
    ADODSCarrostatus: TStringField;
    ADODSVendaid: TAutoIncField;
    ADODSVendacarro_id: TIntegerField;
    ADODSVendacliente_id: TIntegerField;
    ADODSVendafuncionario_id: TIntegerField;
    ADODSVendavalor: TBCDField;
    ADODSVendadata: TDateTimeField;
    ADODSVendaforma_pagamento: TStringField;
    ADODSVendaCliente: TStringField;
    ADODSVendaModelo: TStringField;
    ADODSVendaFuncionario: TStringField;
    ADODSServicoid: TAutoIncField;
    ADODSServicodescricao: TStringField;
    ADODSServicodata_inicio: TWideStringField;
    ADODSServicodata_fim: TWideStringField;
    ADODSServicostatus: TStringField;
    ADODSServicocarro_id: TIntegerField;
    ADODSServicoempresa_id: TIntegerField;
    ADODSServicovalor: TBCDField;
    ADODSServiconome_fantasia: TStringField;
    ADODSServicomodelo: TStringField;
    procedure ADODSCarroexproprietario_idValidate(Sender: TField);
    procedure ADODSServico_Pecaspeca_idValidate(Sender: TField);
    procedure ADODSServico_PecasAfterPost(DataSet: TDataSet);
    procedure ADODSServico_PecasAfterDelete(DataSet: TDataSet);
    procedure ADODSServico_PecasNewRecord(DataSet: TDataSet);
    procedure ADODSServicoBeforePost(DataSet: TDataSet);
    procedure ADODSCarroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntCadCarro, UntCadServico;

{$R *.dfm}

procedure TDM.ADODSCarroexproprietario_idValidate(Sender: TField);
begin
  if not FrmCadCarro.ADOQueryCliente.Locate('ID', ADODSCarroexproprietario_id.AsString, []) then
  begin
    MessageDlg('Cliente não encontrado', mtError, [mbOK], 0);
    Abort;
  end;

end;

procedure TDM.ADODSCarroNewRecord(DataSet: TDataSet);
begin
  ADODSCarrostatus.AsString:= 'Disponível';
end;

procedure TDM.ADODSServicoBeforePost(DataSet: TDataSet);
begin
//  ADODSCarro.Close;
//  ADODSCarro.Open;
//   if not (ADODSCarro.State in [dsInsert, dsEdit]) then
//      ADODSCarro.Edit;
//  ADODSCarro.Locate('ID', ADODSServicocarro_id.AsString, []);
//  if ADODSServicostatus.AsString = 'Em andamento' then
//    ADODSCarrostatus.AsString:= 'Em manutenção'
//  else
//    ADODSCarrostatus.AsString:= 'Disponível';
//   ADODSCarro.Post;

end;

procedure TDM.ADODSServico_PecasAfterDelete(DataSet: TDataSet);
var Bmk: TBookmark;
    ValTot: Double;
begin
  with ADODSServico_Pecas do
  begin
    Bmk:= GetBookmark;
    DisableControls;
    try
      ValTot:= 0.0;
      First;
      while not Eof do
      begin
        ValTot:= + ADODSServico_Pecasvalor_total.AsFloat;
        Next;
      end;
    finally
    EnableControls;
    if Bmk <> nil then
    begin
      GotoBookmark(Bmk);
      FreeBookmark(Bmk);
    end;
    end;

    if not (ADODSServico.State in [dsInsert, dsEdit]) then
      ADODSServico.Edit;

      ADODSServicovalor.AsFloat:= ValTot;
  end;
end;

procedure TDM.ADODSServico_PecasAfterPost(DataSet: TDataSet);
var Bmk: TBookmark;
    ValTot: Double;
begin
  with ADODSServico_Pecas do
  begin
    Bmk:= GetBookmark;
    DisableControls;
    try
      ValTot:= 0.0;
      First;
      while not Eof do
      begin
        ValTot:= + ADODSServico_Pecasvalor_total.AsFloat;
        Next;
      end;
    finally
    EnableControls;
    if Bmk <> nil then
    begin
      GotoBookmark(Bmk);
      FreeBookmark(Bmk);
    end;
    end;

    if not (ADODSServico.State in [dsInsert, dsEdit]) then
      ADODSServico.Edit;

      ADODSServicovalor.AsFloat:= ValTot;
      ADODSServico.Post;
  end;
end;

procedure TDM.ADODSServico_PecasNewRecord(DataSet: TDataSet);
begin
  ADODSServico_Pecasservico_id.AsInteger:= ADODSServicoid.AsInteger;
end;

procedure TDM.ADODSServico_Pecaspeca_idValidate(Sender: TField);
begin
  if not FrmCadServico.ADOQueryPeca.Locate('ID', ADODSServico_Pecaspeca_id.AsString, []) then
  begin
    MessageDlg('Peça não encontrada', mtError, [mbOK], 0);
    Abort;
  end
  else
  begin
    ADODSServico_Pecasvalor_unit.AsFloat:= FrmCadServico.ADOQueryPecavalor_unit.AsFloat;
    ADODSServico_Pecasqtde.AsInteger:= 1;
    ADODSServico_Pecasvalor_total.AsFloat:= FrmCadServico.ADOQueryPecavalor_unit.AsFloat;
  end;
end;

end.
