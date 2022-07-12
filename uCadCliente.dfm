inherited FrmCadClientes: TFrmCadClientes
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 535
    ExplicitHeight = 332
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 19
      Top = 82
      Width = 62
      Height = 13
      Caption = 'Dt. Cadastro'
    end
    object edtCLIENTE_ID: TDBEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      DataField = 'CLIENTE_ID'
      Enabled = False
      TabOrder = 0
    end
    object edtDTCADASTRO: TDBEdit
      Left = 19
      Top = 101
      Width = 121
      Height = 21
      DataField = 'DTCADASTRO'
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtNOME: TDBEdit
      Left = 152
      Top = 43
      Width = 329
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      CharCase = ecUpperCase
      DataField = 'NOME'
      TabOrder = 2
    end
  end
  inherited pnlBotoes: TPanel
    inherited dbNavegacao: TDBNavigator
      Hints.Strings = ()
    end
  end
end
