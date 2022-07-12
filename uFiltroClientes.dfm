inherited FrmFiltroClientes: TFrmFiltroClientes
  Caption = 'Clientes'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 535
    ExplicitHeight = 438
  end
  inherited pnlBotoes: TPanel
    inherited btnTodos: TSpeedButton
      OnClick = btnTodosClick
    end
    inherited btnIncluir: TSpeedButton
      OnClick = btnIncluirClick
    end
    inherited btnAlterar: TSpeedButton
      OnClick = btnAlterarClick
    end
    inherited btnConsultar: TSpeedButton
      OnClick = btnConsultarClick
    end
  end
  object qryCadastro: TFDQuery
    CachedUpdates = True
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'select '
      'CLIENTE_ID,'
      'NOME,'
      'DTCADASTRO '
      'from CLIENTES')
    Left = 232
    Top = 112
    object qryCadastroCLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 300
    end
    object qryCadastroDTCADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      Required = True
    end
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 232
    Top = 280
  end
  object dspCadastro: TDataSetProvider
    DataSet = qryCadastro
    Options = [poCascadeUpdates, poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 168
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadastro'
    BeforeOpen = cdsCadastroBeforeOpen
    OnNewRecord = cdsCadastroNewRecord
    Left = 232
    Top = 224
    object cdsCadastroCLIENTE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIENTE_ID'
      Origin = 'CLIENTE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadastroNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 300
    end
    object cdsCadastroDTCADASTRO: TSQLTimeStampField
      DisplayLabel = 'Dt.Cadastro'
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      Required = True
    end
  end
end
