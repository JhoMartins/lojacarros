object DM: TDM
  OldCreateOrder = False
  Height = 348
  Width = 490
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LojaCarros;Data Source=DESKTOP-TL1GQGV\' +
      'SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 176
    Top = 48
  end
  object ADODSCliente: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from cliente'
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
    object ADODSClientedata_nasc: TWideStringField
      FieldName = 'data_nasc'
      Size = 10
    end
    object ADODSClienteEndereço: TStringField
      FieldName = 'Endere'#231'o'
      Size = 50
    end
    object ADODSClientebairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object ADODSClientecelular: TStringField
      FieldName = 'celular'
      Size = 14
    end
    object ADODSClienteprofissao: TStringField
      FieldName = 'profissao'
      Size = 30
    end
    object ADODSClientesalario: TBCDField
      FieldName = 'salario'
      Precision = 18
      Size = 0
    end
    object ADODSClienteempresa: TStringField
      FieldName = 'empresa'
      Size = 30
    end
    object ADODSClientetel_empresa: TStringField
      FieldName = 'tel_empresa'
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
    CommandText = 'select * from Funcionario'
    Parameters = <>
    Left = 128
    Top = 208
  end
  object DSFuncionario: TDataSource
    DataSet = ADODSFuncionario
    Left = 224
    Top = 208
  end
end
