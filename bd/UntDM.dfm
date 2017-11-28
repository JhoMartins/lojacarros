object DM: TDM
  OldCreateOrder = False
  Height = 500
  Width = 490
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=lojacarros;Data Source=DESKTOP-TL1GQGV\' +
      'SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packe' +
      't Size=4096;Workstation ID=DESKTOP-TL1GQGV;Use Encryption for Da' +
      'ta=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 184
    Top = 48
  end
  object ADODSCliente: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Cliente'
    Parameters = <>
    Left = 136
    Top = 96
    object ADODSClienteid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSClientenome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object ADODSClientecpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
    object ADODSClientedata_nascimento: TWideStringField
      FieldName = 'data_nascimento'
      Size = 10
    end
    object ADODSClienteendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ADODSClientebairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSClientecidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ADODSClienteestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object ADODSClientecep: TStringField
      FieldName = 'cep'
      Size = 15
    end
    object ADODSClienteprofissao: TStringField
      FieldName = 'profissao'
      Size = 50
    end
    object ADODSClienterenda_mensal: TBCDField
      FieldName = 'renda_mensal'
      Precision = 5
      Size = 2
    end
    object ADODSClientecelular: TStringField
      FieldName = 'celular'
      Size = 15
    end
  end
  object DSCliente: TDataSource
    DataSet = ADODSCliente
    Left = 224
    Top = 96
  end
  object ADODSEmpresa: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Empresa'
    Parameters = <>
    Left = 128
    Top = 152
    object ADODSEmpresaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSEmpresarazao_social: TStringField
      FieldName = 'razao_social'
      Size = 50
    end
    object ADODSEmpresanome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Size = 50
    end
    object ADODSEmpresacnpj: TStringField
      FieldName = 'cnpj'
      Size = 50
    end
    object ADODSEmpresaendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ADODSEmpresabairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSEmpresacidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ADODSEmpresaestado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object ADODSEmpresacep: TStringField
      FieldName = 'cep'
      Size = 15
    end
    object ADODSEmpresatelefone: TStringField
      FieldName = 'telefone'
      Size = 15
    end
  end
  object DSEmpresa: TDataSource
    DataSet = ADODSEmpresa
    Left = 224
    Top = 152
  end
  object ADODSFuncionario: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Funcionario'
    Parameters = <>
    Left = 128
    Top = 208
    object ADODSFuncionarioid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSFuncionarionome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object ADODSFuncionariocpf: TStringField
      FieldName = 'cpf'
      Size = 13
    end
    object ADODSFuncionariodata_nascimento: TWideStringField
      FieldName = 'data_nascimento'
      Size = 10
    end
    object ADODSFuncionarioendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object ADODSFuncionariobairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSFuncionariocidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object ADODSFuncionariocep: TStringField
      FieldName = 'cep'
      Size = 13
    end
    object ADODSFuncionarioestado: TStringField
      FieldName = 'estado'
      Size = 50
    end
    object ADODSFuncionariocelular: TStringField
      FieldName = 'celular'
      Size = 13
    end
    object ADODSFuncionariotelefone: TStringField
      FieldName = 'telefone'
      Size = 13
    end
    object ADODSFuncionarioestado_civil: TStringField
      FieldName = 'estado_civil'
      Size = 10
    end
    object ADODSFuncionariofilhos: TIntegerField
      FieldName = 'filhos'
    end
    object ADODSFuncionariosalario_base: TBCDField
      FieldName = 'salario_base'
      Precision = 5
      Size = 2
    end
    object ADODSFuncionariodata_admissao: TWideStringField
      FieldName = 'data_admissao'
      Size = 10
    end
  end
  object DSFuncionario: TDataSource
    DataSet = ADODSFuncionario
    Left = 224
    Top = 208
  end
  object ADODSCarro: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Carro'
    Parameters = <>
    Left = 128
    Top = 264
    object ADODSCarroid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSCarromodelo: TStringField
      FieldName = 'modelo'
      Size = 50
    end
    object ADODSCarromarca: TStringField
      FieldName = 'marca'
      Size = 50
    end
    object ADODSCarrodata_compra: TWideStringField
      FieldName = 'data_compra'
      Size = 10
    end
    object ADODSCarrovalor_compra: TWideStringField
      FieldName = 'valor_compra'
      Size = 10
    end
    object ADODSCarroexproprietario_id: TIntegerField
      FieldName = 'exproprietario_id'
      OnValidate = ADODSCarroexproprietario_idValidate
    end
    object ADODSCarrocor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object ADODSCarrovalor_venda: TWideStringField
      FieldName = 'valor_venda'
      FixedChar = True
      Size = 10
    end
  end
  object DSCarro: TDataSource
    DataSet = ADODSCarro
    Left = 224
    Top = 264
  end
  object ADODSVenda: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Venda'
    Parameters = <>
    Left = 128
    Top = 328
    object ADODSVendaid: TIntegerField
      FieldName = 'id'
    end
    object ADODSVendacarro_id: TIntegerField
      FieldName = 'carro_id'
    end
    object ADODSVendavalor_final: TBCDField
      FieldName = 'valor_final'
      Precision = 18
      Size = 2
    end
    object ADODSVendadata: TWideStringField
      FieldName = 'data'
      Size = 10
    end
    object ADODSVendacliente_id: TIntegerField
      FieldName = 'cliente_id'
    end
    object ADODSVendapagamento: TStringField
      FieldName = 'pagamento'
      Size = 50
    end
    object ADODSVendadesconto: TBCDField
      FieldName = 'desconto'
      Precision = 3
      Size = 2
    end
    object ADODSVendavalor_inicial: TBCDField
      FieldName = 'valor_inicial'
      Precision = 18
      Size = 2
    end
  end
  object DSVenda: TDataSource
    DataSet = ADODSVenda
    Left = 224
    Top = 328
  end
  object ADODSServico: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Servico'
    Parameters = <>
    Left = 120
    Top = 376
    object ADODSServicoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSServicodescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ADODSServicodata_inicio: TWideStringField
      FieldName = 'data_inicio'
      Size = 10
    end
    object ADODSServicodata_fim: TWideStringField
      FieldName = 'data_fim'
      FixedChar = True
      Size = 10
    end
    object ADODSServicostatus: TStringField
      FieldName = 'status'
      Size = 50
    end
    object ADODSServicocarro_id: TIntegerField
      FieldName = 'carro_id'
    end
    object ADODSServicoempresa_id: TIntegerField
      FieldName = 'empresa_id'
    end
    object ADODSServicofinalizado_em: TWideStringField
      FieldName = 'finalizado_em'
      Size = 10
    end
    object ADODSServicovalor: TBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
  end
  object DSServico: TDataSource
    DataSet = ADODSServico
    Left = 224
    Top = 376
  end
end
