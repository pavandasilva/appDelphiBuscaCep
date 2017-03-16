{
1 - copie essa unit para a pasta de seu projeto
2 - no seu formulário em "uses" adicione -> UnTAPIViacep
3 - Declare uma variável do tipo  TAPIwebm Ex: teste : TAPIViacep
3 - Instancie um objeto da classe TAPIwebm passando como parâmetro o CEP que deseja buscar Ex : teste := TAPIViacep.Create('17852145');
4 - Pegue seus dados   ex: teste.GetLogradouro
* .GetRespCode  -> 200 = ok ; 400 = Cep errado ou inexistente
}
unit UnAPIviacep;
interface
uses
  IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, System.json, System.SysUtils;
type
  TAPIViacep = class
  private
    RespCode: Integer;
    Logradouro, Complemento, Bairro, Localidade, UF, IBGE, Gia, Unidade : String;
    procedure BuscarCep(pCep: String);
    procedure LerJson(pJson: String);
  public
    function GetRespCode: Integer;
    function GetLogradouro : String;
    function GetComplemento : String;
    function GetBairro : String;
    function GetLocalidade : String;
    function GetUF : String;
    function GetIBGE : String;
    function GetGia : String;
    function GetUnidade : String;
    constructor Create(pCEP : String);
  end;
implementation
{ TAPIwebm }
procedure TAPIViacep.BuscarCep(pCEP: String);
var
  IdHTTP: TIdHTTP;
  LHandler: TIdSSLIOHandlerSocketOpenSSL;
  Json: String;
  URL : String;
begin
  IdHTTP := TIdHTTP.Create();//responsavel pela chamada web
  LHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil); //Handler necessário, pois a chamada é https (SSL)
  try
    try
      IdHttp.IOHandler := LHandler;
      URL := 'https://viacep.com.br/ws/' + PCEP + '/json/';  // defifinindo a URL que vai ser chamada (ex: https://viacep.com.br/ws/17202140/json/)
      Json := IdHTTP.Get(URL);
      RespCode := IdHTTP.ResponseCode; //recebe á resposta do servidor web
    except
      RespCode := IdHTTP.ResponseCode; //recebe á resposta do servidor web
      exit; //se cair na excessão, interrompe a execução restante
    end;
  finally
    FreeAndNil(LHandler);
    FreeAndNil(IdHTTP);
  end;
  LerJson(Json);
end;
constructor TAPIViacep.Create(pCEP: String);
begin
   BuscarCep(pCEP);
end;
function TAPIViacep.GetBairro: String;
begin
  Result := Bairro;
end;
function TAPIViacep.GetComplemento: String;
begin
  Result := Complemento;
end;
function TAPIViacep.GetGia: String;
begin
  Result := Gia;
end;
function TAPIViacep.GetIBGE: String;
begin
  Result := IBGE;
end;
function TAPIViacep.GetLocalidade: String;
begin
  Result := Localidade;
end;
function TAPIViacep.GetLogradouro: String;
begin
  Result := Logradouro;
end;
function TAPIViacep.GetRespCode: Integer;
begin
  Result := RespCode;
end;
function TAPIViacep.GetUF: String;
begin
  Result := UF;
end;
function TAPIViacep.GetUnidade: String;
begin
  Result := Unidade;
end;
{ Passa os valores do Json vindo da web para os fields da classe}
procedure TAPIViacep.LerJson(pJson: String);
var
  umJSONObject : TJSONObject;
begin
  try
    umJSONObject:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(pJson), 0) as TJSONObject; //converte string JSON em um objeto nativo do delphi do tipo TJSONObject
    Logradouro  := umJSONObject.Get('logradouro').JsonValue.Value; //busca dentro do JsonObject o  indíce 'logradouro'; passa o valor para o Field Logradouro
    Bairro      := umJSONObject.Get('bairro').JsonValue.Value;
    Localidade  := umJSONObject.Get('localidade').JsonValue.Value;
    Complemento := umJSONObject.Get('complemento').JsonValue.Value;
    Unidade     := umJSONObject.Get('unidade').JsonValue.Value;
    IBGE        := umJSONObject.Get('ibge').JsonValue.Value;
    UF          := umJSONObject.Get('uf').JsonValue.Value;
    Gia         := umJSONObject.Get('gia').JsonValue.Value;
  finally
    FreeAndNil(umJSONObject);
  end;
end;
end.
