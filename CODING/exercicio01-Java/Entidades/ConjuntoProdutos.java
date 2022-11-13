package Entidades;

import java.util.ArrayList;

public class ConjuntoProdutos {
    private ArrayList<Produto> produtos;

    public ConjuntoProdutos() {
        this.produtos = new ArrayList<Produto>();
    }

    public boolean adicionarProdutos(Produto produto) {
        return this.produtos.add(produto);
    }

    public boolean removerProduto(int codigo) {
        for (Produto produto : produtos) {
            if (produto.getCodigo() == codigo) {
                return this.produtos.remove(produto);
            }
        }
        return false;
    }

    public String mostrarProdutos() {

        String produtosExibidos = "";

        if (this.produtos.size() == 0) {
            return "Nenhum produto adicionado!";
        } else {
            for (Produto produto : produtos) {
                produtosExibidos += produto.toString() + "\n";
            }
            return produtosExibidos;
        }
    }

    public boolean atualizarProduto(Produto produto) {
        for (Produto prod : produtos) {
            if (prod.getCodigo() == produto.getCodigo()) {
                this.produtos.set(this.produtos.indexOf(prod), produto);
                return true;
            }
        }
        return false;
    }

    public boolean atualizarPrecoPorcentagem(double percentual) {

        for (Produto prod : produtos) {
            prod.atualizaPreco(percentual);
        }
        return true;
    }
}
