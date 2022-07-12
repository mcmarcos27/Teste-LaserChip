unit uFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmFiltroClientes = class(TFrmConsulta)
    qryCadastro: TFDQuery;
    qryCadastroCLIENTE_ID: TIntegerField;
    qryCadastroNOME: TStringField;
    qryCadastroDTCADASTRO: TSQLTimeStampField;
    dsCadastro: TDataSource;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    cdsCadastroCLIENTE_ID: TIntegerField;
    cdsCadastroNOME: TStringField;
    cdsCadastroDTCADASTRO: TSQLTimeStampField;
    procedure btnTodosClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsCadastroBeforeOpen(DataSet: TDataSet);
    procedure cdsCadastroNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltroClientes: TFrmFiltroClientes;

implementation

{$R *.dfm}

uses uCadCliente;

procedure TFrmFiltroClientes.btnAlterarClick(Sender: TObject);
var
  lformCliente: TFrmCadClientes;
begin
  inherited;
  try
    lformCliente := TFrmCadClientes.Create(Self);
    lformCliente.SetFonteDados(Self.dsCadastro);
    Self.cdsCadastro.Edit;
    lformCliente.ShowModal;
  finally
    FreeAndNil(lformCliente);
  end;

end;

procedure TFrmFiltroClientes.btnConsultarClick(Sender: TObject);
var
  lformCliente: TFrmCadClientes;
begin
  inherited;
  try
    lformCliente := TFrmCadClientes.Create(Self);
    lformCliente.SetFonteDados(Self.dsCadastro);
    lformCliente.ShowModal;
  finally
    FreeAndNil(lformCliente);
  end;

end;

procedure TFrmFiltroClientes.btnIncluirClick(Sender: TObject);
var
  lformCliente: TFrmCadClientes;
begin
  inherited;
  try
    lformCliente := TFrmCadClientes.Create(Self);
    lformCliente.SetFonteDados(Self.dsCadastro);
    Self.cdsCadastro.Append;
    lformCliente.ShowModal;
  finally
    FreeAndNil(lformCliente);
  end;

end;

procedure TFrmFiltroClientes.btnTodosClick(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.CommandText := qryCadastro.SQL.Text;
  cdsCadastro.Open;
end;

procedure TFrmFiltroClientes.cdsCadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryCadastro.Open();
end;

procedure TFrmFiltroClientes.cdsCadastroNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsCadastroDTCADASTRO.AsDateTime := Now;
end;

procedure TFrmFiltroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  SetFonteDados(dsCadastro);
end;

procedure TFrmFiltroClientes.FormShow(Sender: TObject);
begin
  inherited;
  cdsCadastro.Close;
  cdsCadastro.Open;
end;

end.
