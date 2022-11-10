package Entidades;

public class Produto {
    private int codigo;
    private String nome;
    private Double valor;
    private Fornecedor fornecedor;
   
    public Produto() {
    }

    public Produto(int codigo, String nome, Double valor, Fornecedor fornecedor) {
        this.codigo = codigo;
        this.nome = nome;
        this.valor = valor;
        this.fornecedor = fornecedor;
    }

    // Getters
    public int getCodigo() {
        return codigo;
    }

    public String getNome() {
        return nome;
    }

    public Double getValor() {
        return valor;
    }

    public Fornecedor getFornecedor() {
        return fornecedor;
    }

    // Setters
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public void setFornecedor(Fornecedor fornecedor) {
        this.fornecedor = fornecedor;
    }

    public Double atualizaPreco(Double porcentagem){
        if( porcentagem <= 0 ){
            System.out.println("Porcentagem Invalida!");
        } else {
            this.valor = this.valor * ((porcentagem/100)+1);  
        }   

        return this.valor;
    }

    public String toString() {
        return "Codigo: " + getCodigo() + " | " + "Nome: " + getNome() + " | " + "Valor: " + getValor() + " | " + "Fornecedor:" + this.fornecedor.toString();
    }
    
}
