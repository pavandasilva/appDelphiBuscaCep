## Resumo
Buscador de endereços por CEP. Retorna Logradouro, Bairro, Localidade, UF, entre outros. Infelizmente, a API utilizada não busca CEP pelo endereço.  
## Instalação
Copie a classe **UnApiViacep.pas** para seu projeto.
## Exemplo de código
<p><b>uses</b> UnApiViacep;</p>
<p>...</p>
<p><b>var</b> Api : TUnApiViaCep;</p>
<p>...</p>
<p>...</p>
<p>Api := TUnApiViaCep.Create(Digite_o_cep_aqui); </p>
<p><b>showMessage</b>(Api.GetBairro);</p>
<p>...</p>

## API utilizada
A documentação da API utilizada na criação da classe **UnApiViacep.pas** do projeto pode ser acessada neste link: https://viacep.com.br
## Classes do Delphi utilizadas
IdHTTP(Indy), IdSSLOpenSSL, System.json.  

