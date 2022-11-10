package Entidades;

import java.util.Scanner;
import java.util.ArrayList;

public class ConjuntoProdutos {
        private ArrayList<Produto> produtos; 

    public ConjuntoProdutos() {
    }

    public ConjuntoProdutos(ArrayList<Produto> produtos) {
        this.produtos = produtos;
    }

    public void adicionarProdutos(Produto produto){
        produtos.add(produto);
    }

    public void removerProduto(int i){
        produtos.remove(i);
    }

    public String mostrarProdutos(){

        String produtosExibidos = "";

        if (produtos.size() == 0) {
            return "Nenhum produto adicionado!";
        } else {
            for (Produto produto : produtos) {
                produtosExibidos += produto.toString()+ "\n";
            }
    
            return produtosExibidos;
        }
    }

    public boolean atualizarProduto(int codigoProduto){

        boolean changedProduct = false;

        for (Produto produto : produtos) {
            if (produto.getCodigo() == codigoProduto) {
                // Alterar CODIGO
                System.out.println("Qual o novo código? ");
                Scanner codigo = new Scanner(System.in);
                String novoCodigo = codigo.next();
                int codigoConvertido = Integer.parseInt(novoCodigo);
                produto.setCodigo(codigoConvertido);
                
                // Alterar NOME
                System.out.println("Qual o novo nome? ");
                Scanner nome = new Scanner(System.in);
                String novoNome = nome.next();
                produto.setNome(novoNome);
                 
                // Alterar VALOR
                System.out.println("Qual o novo valor? ");
                Scanner valor = new Scanner(System.in);
                String novoValor = valor.next();
                double valorConvertido = Double.parseDouble(novoValor);
                produto.setValor(valorConvertido);
                
                changedProduct = true;
            }
        } 

        return changedProduct;
    }
    
    public boolean atualizarPrecoPorcentagem(String nomeProduto) {
        
        boolean changedPriceProduct = false;
        
        for (Produto produto : produtos) {
            if (produto.getNome() == nomeProduto) {
                // Alterar VALOR POR PORCENTAGEM
                System.out.println("Qual o novo valor de porcentagem? ");
                Scanner valorPorcento = new Scanner(System.in);
                String novoValor = valorPorcento.next();
                double valorConvertido = Double.parseDouble(novoValor);
                produto.atualizaPreco(valorConvertido);

                changedPriceProduct = true;
            }
        } 
        

        return changedPriceProduct;
    }
}
