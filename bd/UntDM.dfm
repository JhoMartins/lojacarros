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
end
