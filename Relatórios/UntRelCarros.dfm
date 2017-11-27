object FrmRelCarro: TFrmRelCarro
  Left = 0
  Top = 0
  Caption = 'FrmRelCarro'
  ClientHeight = 528
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 41
    Align = alTop
    Caption = 'Relatorios Carros'
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 32
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 549
    Height = 306
    TabOrder = 1
    object LabeledEdit1: TLabeledEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Marca'
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 216
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Modelo'
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 392
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 17
      EditLabel.Height = 13
      EditLabel.Caption = 'Cor'
      TabOrder = 2
    end
    object LabeledEdit4: TLabeledEdit
      Left = 64
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Data Compra'
      TabOrder = 3
    end
    object LabeledEdit5: TLabeledEdit
      Left = 224
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor Compra'
      TabOrder = 4
    end
    object LabeledEdit6: TLabeledEdit
      Left = 392
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 57
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor Venda'
      TabOrder = 5
    end
    object LabeledEdit7: TLabeledEdit
      Left = 64
      Top = 192
      Width = 121
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit7'
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 224
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 8
    end
  end
end
