## Resumo
Buscador de endereços por CEP, com a utilização da API **viacep(https://viacep.com.br/)**.
## Installation
Copie a classe **UnApiViacep.pas** para seu projeto.
## Exemplo de código
<p>uses UnApiViacep;</p>
<p>...</p>
<p>var Api : TUnApiViaCep;</p>
<p>...</p>
<p>...</p>
<p>Api := TUnApiViaCep(142857529); </p>
<p>showMessage(Api.GetBairro);</p>
<p>...</p>
## API utilizada
É uma API que retorna os dados em formato **JSON** https://viacep.com.br
## Classes utilizadas
IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, System.json.  

