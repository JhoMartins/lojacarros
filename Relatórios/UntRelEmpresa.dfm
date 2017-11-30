object FrmRelEmpresa: TFrmRelEmpresa
  Left = 0
  Top = 0
  Caption = 'FrmRelEmpresa'
  ClientHeight = 418
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 41
    Align = alTop
    Caption = 'Rel'#225't'#243'rio de Empresas'
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 128
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 613
    Height = 314
    TabOrder = 1
    object edtNomede: TLabeledEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome de:'
      TabOrder = 0
    end
    object EdtNomeate: TLabeledEdit
      Left = 392
      Top = 48
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome at'#233
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 112
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 344
      Top = 264
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object edtCidade: TLabeledEdit
      Left = 112
      Top = 115
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade'
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 112
      Top = 176
      Width = 281
      Height = 57
      Caption = 'Oderna'#231#227'o'
      Items.Strings = (
        'Nome'
        'Cidade')
      TabOrder = 5
    end
  end
  object ADOQueryEmpresa: TADOQuery
    Active = True
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Empresa')
    Left = 112
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ADOQueryEmpresa
    BCDToCurrency = False
    Left = 248
    Top = 368
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43069.581675532400000000
    ReportOptions.LastChange = 43069.581675532400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 416
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1razao_social: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000010000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'razao_social'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."razao_social"]')
        end
        object frxDBDataset1nome_fantasia: TfrxMemoView
          Left = 177.637910000000000000
          Top = 15.118120000000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'nome_fantasia'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nome_fantasia"]')
        end
        object frxDBDataset1cnpj: TfrxMemoView
          Left = 287.244280000000000000
          Top = 15.118120000000010000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DataField = 'cnpj'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."cnpj"]')
        end
        object frxDBDataset1endereco: TfrxMemoView
          Left = 408.189240000000000000
          Top = 15.118120000000010000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
        end
        object frxDBDataset1bairro: TfrxMemoView
          Left = 582.047620000000000000
          Top = 15.118120000000010000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'bairro'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."bairro"]')
        end
        object frxDBDataset1cidade: TfrxMemoView
          Left = 733.228820000000000000
          Top = 15.118120000000010000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'cidade'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."cidade"]')
        end
        object frxDBDataset1estado: TfrxMemoView
          Left = 891.969080000000000000
          Top = 15.118120000000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'estado'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."estado"]')
        end
        object frxDBDataset1telefone: TfrxMemoView
          Left = 960.000620000000000000
          Top = 15.118120000000010000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'telefone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 1028.032160000000000000
          Height = 18.897650000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clSilver
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 472.441250000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 506.457020000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina[Page#] de [TotalPages#]')
        end
        object Memo15: TfrxMemoView
          Left = 15.118120000000000000
          Top = 7.559059999999988000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[date] - [time]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo14: TfrxMemoView
          Left = 249.448980000000000000
          Top = 49.133889999999990000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'www.adrianomultimarcas.com')
        end
        object Memo12: TfrxMemoView
          Left = 257.008040000000000000
          Top = 18.897650000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Av. Alberto Vollet Sachs 151')
        end
        object Memo13: TfrxMemoView
          Left = 222.992270000000000000
          Top = 34.015770000000010000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telefones (19) 3426 - 4142 / 3377 - 4142')
        end
        object Memo2: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000001000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'JD AUTOM'#211'VEIS')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 113.385900000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Raz'#227'o Social')
        end
        object Memo4: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Nome.F')
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'CNPJ')
        end
        object Memo6: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Bairro')
        end
        object Memo8: TfrxMemoView
          Left = 733.228820000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cidade')
        end
        object Memo9: TfrxMemoView
          Left = 891.969080000000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Estado')
        end
        object Memo10: TfrxMemoView
          Left = 960.000620000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telefone')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000022000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Memo11: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000022000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Qtde. de Empresas Cadastradas ==>')
        end
      end
    end
  end
end
