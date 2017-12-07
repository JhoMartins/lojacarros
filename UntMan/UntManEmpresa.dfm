inherited FrmManEmpresa: TFrmManEmpresa
  Caption = 'Manuten'#231#227'o no Cadastro de Empresa'
  ClientWidth = 1083
  ExplicitWidth = 1089
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar1: TToolBar
    Width = 1083
    ExplicitTop = 0
    ExplicitWidth = 1083
    inherited ToolButton5: TToolButton
      OnClick = ToolButton5Click
    end
  end
  inherited Panel2: TPanel
    Width = 1083
    ExplicitWidth = 1083
    inherited Edit1: TEdit
      Width = 849
      ExplicitWidth = 849
    end
    inherited ComboBox1: TComboBox
      Text = 'Nome_Fantasia'
      Items.Strings = (
        'Nome_Fantasia'
        'CNPJ'
        'Cidade'
        'Bairro'
        'Telefone')
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1083
    DataSource = DM.DSEmpresa
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_fantasia'
        Title.Caption = 'Nome Fantasia'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cnpj'
        Title.Caption = 'CNPJ'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        ImeName = 'Telefone'
        Visible = True
      end>
  end
end
