object DM: TDM
  OldCreateOrder = False
  Height = 348
  Width = 490
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LojaCarros;Data Source=DEIVID-PC'
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
end
