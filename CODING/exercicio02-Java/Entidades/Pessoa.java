package Entidades;

public class Pessoa {
    private String nome;
    private String dataNasc;

    public Pessoa() {}

    public Pessoa(String nome, String dataNasc) {
        this.nome = nome;
        this.dataNasc = dataNasc;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public String getDataNasc() {
        return dataNasc;
    }

    // Setters 
    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String toString() {
        return "Nome: " + this.nome + "\nData de Nascimento: " + this.dataNasc;
    }

    
}
