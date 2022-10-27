package AulaJAVA.entidades;

public class Agencia {
    private String numeroAgencia;
    private String telefone;
    private String email;
    private Endereco endereco;

    public Agencia() {
    }

    // Constructor
    public Agencia(String numeroAgencia, String telefone, String email, Endereco endereco) {
        this.numeroAgencia = numeroAgencia;
        this.telefone = telefone;
        this.email = email;
        this.endereco = endereco;
    }

    // Getters
    public String getNumeroAgencia() {
        return numeroAgencia;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEmail() {
        return email;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    // Setters
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

}