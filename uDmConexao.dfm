object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 155
  Width = 133
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 48
    Top = 88
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Database=TESTE'
      'Address=DESKTOP-HCL660N\SQLEXPRESS'
      'Server=DESKTOP-HCL660N\SQLEXPRESS'
      'OSAuthent=Yes')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
end
