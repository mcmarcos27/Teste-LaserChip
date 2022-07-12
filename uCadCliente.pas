unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastro, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.Mask;

type
  TFrmCadClientes = class(TFormCadastro)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCLIENTE_ID: TDBEdit;
    edtNOME: TDBEdit;
    edtDTCADASTRO: TDBEdit;
  private
    { Private declarations }
  public
    procedure SetFonteDados(pCdsFonteDados: TDataSource);override;

    { Public declarations }
  end;

var
  FrmCadClientes: TFrmCadClientes;

implementation

{$R *.dfm}

uses uDmConexao;

procedure TFrmCadClientes.SetFonteDados(pCdsFonteDados: TDataSource);
begin
  inherited;
  edtCLIENTE_ID.DataSource := pCdsFonteDados;
  edtNOME.DataSource := pCdsFonteDados;
  edtDTCADASTRO.DataSource := pCdsFonteDados;
end;

end.
