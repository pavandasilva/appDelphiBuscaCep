# appDelphiBuscaCep
Utiliza API "viacep"(https://viacep.com.br/) para buscar endereço através de CEP.
Para utilizar no seu projeto:
1 - copie a classe UnApiViaCep.pas para seu projeto;
2 - no seu formulário adicione a uses "UnAPIViacep"; 
3 - Declare uma variável do tipo  "TAPIViacep" Ex: var teste : TAPIViacep
3 - Instancie um objeto da classe "TAPIViacep" passando como parâmetro o CEP que deseja buscar Ex : teste := TAPIViacep.Create('17852145');
4 - A resposta do servidor da API pode ser '200' se deu tudo certo ou '400' se o CEP não foi encontrado ou se não existe.
5 - Para pegar os dados do CEP : teste.getLogradouro, teste.getBairro , etc.
