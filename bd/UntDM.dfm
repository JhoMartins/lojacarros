object DM: TDM
  OldCreateOrder = False
  Height = 348
  Width = 490
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LojaCarros;Data Source=DEIVID-PC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 56
  end
  object ADODSCliente: TADODataSet
    Connection = ADOConnection1
    CommandText = 'select * from cliente'
    Parameters = <>
    Left = 72
    Top = 120
  end
  object DSCliente: TDataSource
    DataSet = ADODSCliente
    Left = 72
    Top = 184
  end
end
