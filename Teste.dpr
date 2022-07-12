program Teste;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {FormMenu},
  uDmConexao in 'uDmConexao.pas' {dmConexao: TDataModule},
  uFuncoes in 'Genericos\uFuncoes.pas',
  uFormMaster in 'Genericos\uFormMaster.pas' {FormMaster},
  uFormCadastro in 'Genericos\uFormCadastro.pas' {FormCadastro},
  uFormConsulta in 'Genericos\uFormConsulta.pas' {FrmConsulta},
  uCadCliente in 'uCadCliente.pas' {FrmCadClientes},
  uFiltroClientes in 'uFiltroClientes.pas' {FrmFiltroClientes},
  uFiltroEnderecos in 'uFiltroEnderecos.pas' {FrmFiltroEnderecos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFrmFiltroEnderecos, FrmFiltroEnderecos);
  Application.Run;
end.
