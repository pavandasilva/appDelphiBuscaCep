unit UnPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls, IdComponent,
  IdBaseComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    edtCEP: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtLogradouro: TEdit;
    edtCidade: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}
uses
  UnAPIviacep;
procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
   UmAPIviacep : TAPIviacep;
begin
   try
      UmAPIviacep := TAPIviacep.Create(edtCep.Text);
      //se encontrou o CEP, preenche os TEdits do form
      if (UmAPIviacep.GetRespCode = 200 ) then
      begin
        edtLogradouro.Text := UmAPIviacep.GetLogradouro;
        edtBairro.Text := UmAPIviacep.GetBairro;
        edtComplemento.Text := UmAPIviacep.GetComplemento;
        edtCidade.Text := UmAPIviacep.GetLocalidade;
      end
      else if (UmAPIviacep.GetRespCode = 400) then
        showMessage('CEP inválido ou não encontrado');
   finally
     FreeAndNil(UmAPIviacep);
   end;
end;
end.
