import Entidades.Fornecedor;
import Entidades.Produto;
import Entidades.ConjuntoProdutos;

public class TesteProduto {
    public static void main(String[] args) throws Exception {

        // CRIANDO FORNECEDORES
        Fornecedor forn1 = new Fornecedor("1234321", "(81) 9 9944-0088", "Zé Maria");
        Fornecedor forn2 = new Fornecedor("543212345", "(81) 9 9765-1189", "Cláudio");

        // CRIANDO PRODUTOS
        Produto produto1 = new Produto(1, "TV LCD", 3500.00, forn1);
        Produto produto2 = new Produto(2, "notebook", 2000.00, forn2);
        Produto produto3 = new Produto(3, "impressora", 232.00, forn2);
        Produto novoProduto1 = new Produto(1, "TV moderna", 4000.00, forn1);

        // CRIANDO CONJUNTO PRODUTOS
        ConjuntoProdutos estoque = new ConjuntoProdutos();

        // TESTES
        //System.out.println(forn1.toString());
        //System.out.println(produto1.toString());

        estoque.adicionarProdutos(produto1);
        estoque.adicionarProdutos(produto2);
        estoque.adicionarProdutos(produto3);

        //System.out.println(estoque.mostrarProdutos());
        
        //estoque.removerProduto(1);
        estoque.atualizarProduto(novoProduto1);

        System.out.println(estoque.mostrarProdutos());


    }
}
