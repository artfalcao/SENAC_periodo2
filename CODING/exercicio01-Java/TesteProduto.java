//import java.util.ArrayList;

import Entidades.ConjuntoProdutos;
import java.util.ArrayList;
//import java.util.List;

import Entidades.Fornecedor;
import Entidades.Produto;

public class TesteProduto {
    public static void main(String[] args) throws Exception {

        // CRIANDO FORNECEDORES
       Fornecedor forn1 = new Fornecedor("1234321", "(81) 9 9944-0088", "Zé Maria");
       Fornecedor forn2 = new Fornecedor("543212345", "(81) 9 9765-1189", "Cláudio");

       // CRIANDO PRODUTOS
       Produto produto1 = new Produto(1, "TV LCD", 3500.00, forn1);
       Produto produto2 = new Produto(2, "notebook", 2000.00, forn2);
       Produto produto3 = new Produto(3, "impressora", 232.00, forn2);

       // TESTANDO FUNCOES DE PRODUTOS
       //System.out.println(produto1.toString());
       //System.out.println(produto2.toString());
       //System.out.println(produto3.toString());
       //produto3.atualizaPreco(10.0);
       //System.out.println(produto3.getValor());

       // TESTANDO FUNCOES DE CONJUNTOPRODUTOS
       ArrayList produtos = new ArrayList<Produto>();
       ConjuntoProdutos conjuntoProdutos = new ConjuntoProdutos(produtos);
       
       // TESTANDO FUNCAO MOSTRAR-PRODUTO
       //System.out.println(conjuntoProdutos.mostrarProdutos());
       
       // TESTANDO ADICIONAR-PRODUTOS
       conjuntoProdutos.adicionarProdutos(produto1);
       //System.out.println(conjuntoProdutos.mostrarProdutos());
       
       // TESTANDO REMOVER-PRODUTOS
       //conjuntoProdutos.removerProduto(0);
       //System.out.println(conjuntoProdutos.mostrarProdutos());
        //TESTANDO ALTERAR-PRODUTO
        conjuntoProdutos.adicionarProdutos(produto2);
        conjuntoProdutos.adicionarProdutos(produto3);
        System.out.println(conjuntoProdutos.mostrarProdutos());
        conjuntoProdutos.atualizarProduto(2);
        System.out.println(conjuntoProdutos.mostrarProdutos());
    }
}
