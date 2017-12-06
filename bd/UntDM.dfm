object DM: TDM
  OldCreateOrder = False
  Height = 500
  Width = 490
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LojaCarros;Data Source=DESKTOP-TL1GQGV\' +
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
    object ADODSFuncionariosalario: TBCDField
      FieldName = 'salario'
      Precision = 18
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
    object ADODSCarrovalor_compra: TBCDField
      FieldName = 'valor_compra'
      Precision = 18
      Size = 2
    end
    object ADODSCarroexproprietario_id: TIntegerField
      FieldName = 'exproprietario_id'
    end
    object ADODSCarrocor: TStringField
      FieldName = 'cor'
      Size = 50
    end
    object ADODSCarrostatus: TStringField
      FieldName = 'status'
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
    CommandText = 
      'select V.*, C.nome as Cliente, Car.modelo as Modelo, F.nome as F' +
      'uncionario from Venda V inner join Cliente C on V.cliente_id = C' +
      '.id inner join Carro Car on V.carro_id = Car.id inner join Funci' +
      'onario F on V.funcionario_id = F.id'
    Parameters = <>
    Left = 128
    Top = 328
    object ADODSVendaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSVendacarro_id: TIntegerField
      FieldName = 'carro_id'
    end
    object ADODSVendacliente_id: TIntegerField
      FieldName = 'cliente_id'
    end
    object ADODSVendafuncionario_id: TIntegerField
      FieldName = 'funcionario_id'
    end
    object ADODSVendavalor: TBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 2
    end
    object ADODSVendadata: TWideStringField
      FieldName = 'data'
      Size = 10
    end
    object ADODSVendaforma_pagamento: TStringField
      FieldName = 'forma_pagamento'
      Size = 50
    end
    object ADODSVendaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
    object ADODSVendaModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object ADODSVendaFuncionario: TStringField
      FieldName = 'Funcionario'
      Size = 50
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
    Left = 128
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
  object ADODSPeca: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from Peca'
    Parameters = <>
    Left = 120
    Top = 424
    object ADODSPecaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSPecanome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object ADODSPecadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object ADODSPecavalor_unit: TBCDField
      FieldName = 'valor_unit'
      Precision = 18
      Size = 2
    end
  end
  object DSPeca: TDataSource
    DataSet = ADODSPeca
    Left = 224
    Top = 424
  end
  object DSServico_Pecas: TDataSource
    DataSet = ADODSServico_Pecas
    Left = 416
    Top = 328
  end
  object ADODSServico_Pecas: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = ADODSServico_PecasAfterPost
    AfterDelete = ADODSServico_PecasAfterDelete
    CommandText = 'select * from Servico_Pecas where servico_id = :id'
    DataSource = DSServico
    MasterFields = 'id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 328
    object ADODSServico_Pecasservico_id: TIntegerField
      FieldName = 'servico_id'
    end
    object ADODSServico_Pecaspeca_id: TIntegerField
      FieldName = 'peca_id'
      OnValidate = ADODSServico_Pecaspeca_idValidate
    end
    object ADODSServico_Pecasqtde: TIntegerField
      FieldName = 'qtde'
    end
    object ADODSServico_Pecasvalor_total: TBCDField
      FieldName = 'valor_total'
      Precision = 18
      Size = 2
    end
    object ADODSServico_Pecasvalor_unit: TBCDField
      FieldName = 'valor_unit'
      Precision = 18
      Size = 2
    end
    object ADODSServico_PecasNomePeca: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePeca'
      LookupDataSet = FrmCadServico.ADOQueryPeca
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'peca_id'
      Size = 50
      Lookup = True
    end
  end
end
