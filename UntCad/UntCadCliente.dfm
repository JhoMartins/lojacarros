object FrmCadCliente: TFrmCadCliente
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o no Cadastro de Cliente'
  ClientHeight = 549
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Telefone: TLabel
    Left = 584
    Top = 309
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 49
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 214
      Top = 8
      Width = 371
      Height = 25
      Caption = 'Manuten'#231#227'o no Cadastro de Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 49
    Width = 823
    Height = 48
    BorderWidth = 1
    ButtonHeight = 45
    ButtonWidth = 45
    Caption = 'ToolBar1'
    DisabledImages = FrmManCliente.ImageList2
    EdgeBorders = [ebTop, ebBottom]
    HotImages = FrmManCliente.ImageList3
    Images = FrmManCliente.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object btn_salvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar Registro'
      Caption = 'btn_salvar'
      ImageIndex = 4
    end
    object btn_cancelar: TToolButton
      Left = 45
      Top = 0
      Hint = 'Cancelar Registro'
      Caption = 'btn_cancelar'
      ImageIndex = 5
    end
    object ToolButton4: TToolButton
      Left = 90
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object btn_sair: TToolButton
      Left = 98
      Top = 0
      Hint = 'Sair'
      Caption = 'btn_sair'
      ImageIndex = 6
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 530
    Width = 823
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object PnlFicha: TPanel
    Left = 0
    Top = 97
    Width = 823
    Height = 433
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 376
    ExplicitTop = 408
    ExplicitWidth = 185
    ExplicitHeight = 41
    object CPF: TLabel
      Left = 28
      Top = 56
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label7: TLabel
      Left = 631
      Top = 173
      Width = 32
      Height = 13
      Caption = 'Sal'#225'rio'
    end
    object Label6: TLabel
      Left = 3
      Top = 173
      Width = 44
      Height = 13
      Caption = 'Profiss'#227'o'
    end
    object Label5: TLabel
      Left = 19
      Top = 136
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label4: TLabel
      Left = 528
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object Label3: TLabel
      Left = 231
      Top = 56
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label2: TLabel
      Left = 22
      Top = 19
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Endereço: TLabel
      Left = 4
      Top = 93
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Empresa: TLabel
      Left = 8
      Top = 209
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Cidade: TLabel
      Left = 368
      Top = 136
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object DBEdit9: TDBEdit
      Left = 686
      Top = 173
      Width = 121
      Height = 21
      DataField = 'salario'
      DataSource = DM.DSCliente
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 64
      Top = 173
      Width = 545
      Height = 21
      DataField = 'profissao'
      DataSource = DM.DSCliente
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 136
      Width = 383
      Height = 21
      DataSource = DM.DSCliente
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 64
      Top = 136
      Width = 281
      Height = 21
      DataField = 'bairro'
      DataSource = DM.DSCliente
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 93
      Width = 743
      Height = 21
      DataField = 'Endere'#231'o'
      DataSource = DM.DSCliente
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 584
      Top = 56
      Width = 223
      Height = 21
      DataField = 'celular'
      DataSource = DM.DSCliente
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 349
      Top = 56
      Width = 164
      Height = 21
      DataField = 'data_nasc'
      DataSource = DM.DSCliente
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 56
      Width = 148
      Height = 21
      DataField = 'cpf'
      DataSource = DM.DSCliente
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 648
      Top = 209
      Width = 159
      Height = 21
      DataField = 'tel_empresa'
      DataSource = DM.DSCliente
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 64
      Top = 209
      Width = 497
      Height = 21
      DataField = 'empresa'
      DataSource = DM.DSCliente
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 19
      Width = 743
      Height = 21
      DataField = 'nome'
      DataSource = DM.DSCliente
      TabOrder = 10
    end
  end
end
