## Atividade 01 - JAVA

1. Implemente em Java uma classe que represente um Fornecedor:
   a)Cada fornecedor possui como atributos, seu CNPJ (uma String), seu telefone (uma String) e o seu nome (uma String).

2. Implemente em Java uma classe que represente um Produto:
   * Um produto tem como atributos um código (um inteiro), um nome (uma String), um valor (um float) e um fornecedor (do tipo Fornecedor implementado na questão anterior)
   * Implemente um método atualizarPreco na classe produto que receba como parâmetro um valor (um float) que representa um percentual. O valor passado deve aumentar o valor do produto. 
       Por exemplo, se for passado o valor 10.0, o valor do produto e aumentado em 10.0%.

3. Crie uma classe TesteProduto com um método main. No método main desta classe, instancie três produtos e dois fornecedores.

4. Implemente em Java uma classe chamada ConjuntoProdutos que contenha um ArrayList que possa guardar produtos (classe implementada na questão anterior) e forneça métodos que permitam inserir, remover, atualizar, mostrar produtos e atualizar o preço dos produtos por porcentagem.<br> 
   Obs.: O conjunto não deve permitir que produtos com o mesmo código sejam cadastrados no conjunto.<br><br>
   
<div>
  <img src="https://user-images.githubusercontent.com/95629281/200943433-872b6959-6bfc-4757-8210-298ce427596b.png" width="450px" />
</div>
