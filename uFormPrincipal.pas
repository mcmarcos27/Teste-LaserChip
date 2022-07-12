unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin;

type
  TFormMenu = class(TForm)
    ToolBar1: TToolBar;
    btnClientes: TToolButton;
    ToolButton4: TToolButton;
    btnEnderecos: TToolButton;
    ToolButton5: TToolButton;
    btnPedidos: TToolButton;
    ImageList1: TImageList;
    procedure btnClientesClick(Sender: TObject);
    procedure btnEnderecosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses uFiltroClientes, uFiltroEnderecos;

procedure TFormMenu.btnClientesClick(Sender: TObject);
begin
  try
    FrmFiltroClientes := TFrmFiltroClientes.Create(self);
    FrmFiltroClientes.ShowModal;
  finally
    FreeAndNil(FrmFiltroClientes);
  end;
end;

procedure TFormMenu.btnEnderecosClick(Sender: TObject);
begin
  try
    FrmFiltroEnderecos := TFrmFiltroEnderecos.Create(self);
    FrmFiltroEnderecos.ShowModal;
  finally
    FreeAndNil(FrmFiltroEnderecos);
  end;
end;

end.
