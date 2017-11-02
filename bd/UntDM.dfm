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
  end
  object DSCliente: TDataSource
    DataSet = ADODSCliente
    Left = 224
    Top = 96
  end
end
