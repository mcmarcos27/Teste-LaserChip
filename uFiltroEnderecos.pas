unit uFiltroEnderecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmFiltroEnderecos = class(TFrmConsulta)
    grdEnderecos: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    qryCliente: TFDQuery;
    qryClienteCLIENTE_ID: TIntegerField;
    qryClienteNOME: TStringField;
    qryClienteDTCADASTRO: TSQLTimeStampField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCLIENTE_ID: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteDTCADASTRO: TSQLTimeStampField;
    dsCliente: TDataSource;
    cdsEndereco: TClientDataSet;
    ENDERECO_ID: TFDAutoIncField;
    CLIENTE_ID: TIntegerField;
    DESCRICAO: TStringField;
    CIDADE: TStringField;
    UF: TStringField;
    dsEnderecos: TDataSource;
    cdsClienteqryEndereco: TDataSetField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 var
  FrmFiltroEnderecos:TFrmFiltroEnderecos;


implementation

{$R *.dfm}

uses uDmConexao;

procedure TFrmFiltroEnderecos.FormShow(Sender: TObject);
begin
  inherited;
  SetFonteDados(dsEnderecos);
  cdsCliente.Open;
end;

end.
