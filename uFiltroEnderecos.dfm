inherited FrmFiltroEnderecos: TFrmFiltroEnderecos
  Caption = 'Endere'#231'os Cliente'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 535
    ExplicitHeight = 438
    object Label1: TLabel [0]
      Left = 1
      Top = 251
      Width = 533
      Height = 13
      Align = alBottom
      Alignment = taCenter
      Caption = 'Endere'#231'os'
      ExplicitWidth = 50
    end
    object Label2: TLabel [1]
      Left = 1
      Top = 1
      Width = 533
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Clientes'
      ExplicitWidth = 38
    end
    inherited grdRegistros: TDBGrid
      Top = 14
      Height = 237
      DataSource = dsCliente
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end>
    end
    object grdEnderecos: TDBGrid
      Left = 1
      Top = 264
      Width = 533
      Height = 173
      Align = alBottom
      DataSource = dsEnderecos
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object qryCliente: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'select '
      'CLIENTE_ID,'
      'NOME,'
      'DTCADASTRO '
      'from CLIENTES')
    Left = 232
    Top = 48
    object qryClienteCLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object qryClienteDTCADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      Required = True
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Options = [poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 104
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 232
    Top = 160
    object cdsClienteCLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      Required = True
      Size = 300
    end
    object cdsClienteDTCADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      Required = True
    end
    object cdsClienteqryEndereco: TDataSetField
      FieldName = 'qryEndereco'
    end
  end
  object dsCliente: TDataSource
    Left = 232
    Top = 216
  end
  object TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'select *'
      'from ENDERECOS'
      'WHERE CLIENTE_ID = :CLIENTE_ID')
    Left = 336
    Top = 72
    ParamData = <
      item
        Name = 'CLIENTE_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object ENDERECO_ID: TFDAutoIncField
      FieldName = 'ENDERECO_ID'
      Origin = 'ENDERECO_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object CLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      Required = True
    end
    object DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 300
    end
    object CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 200
    end
    object UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
  end
  object cdsEndereco: TClientDataSet
    Aggregates = <>
    DataSetField = cdsClienteqryEndereco
    Params = <>
    Left = 320
    Top = 176
  end
  object dsEnderecos: TDataSource
    Left = 320
    Top = 232
  end
end
