package Entidades;

public class Fornecedor{
    private String cnpj;
    private String telefone;
    private String nome;
    
    public Fornecedor() {
    }
 
    public Fornecedor(String cnpj, String telefone, String nome) {
        this.cnpj = cnpj;
        this.telefone = telefone;
        this.nome = nome;
    }

    // Getters
    public String getCnpj() {
        return this.cnpj;
    }

    public String getTelefone() {
        return this.telefone;
    }

    public String getNome() {
        return this.nome;
    }

    // Setters
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String toString() {
        return "Fornecedor: " + getNome() + " | " + "CNPJ: " +  getCnpj() + " | " + "Telefone: " + getTelefone();
    }
}