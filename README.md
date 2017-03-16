## Resumo
Buscador de endereços por CEP, com a utilização da API **viacep(https://viacep.com.br/)**.
## Instalação
Copie a classe **UnApiViacep.pas** para seu projeto.
## Exemplo de código
<p><b>uses</b> UnApiViacep;</p>
<p>...</p>
<p><b>var</b> Api : TUnApiViaCep;</p>
<p>...</p>
<p>...</p>
<p>Api := TUnApiViaCep(142857529); </p>
<p><b>showMessage</b>(Api.GetBairro);</p>
<p>...</p>

## API utilizada
É uma API que retorna os dados em formato **JSON** https://viacep.com.br
## Classes utilizadas
IdTCPConnection, IdTCPClient, IdHTTP, IdSSLOpenSSL, System.json.  

