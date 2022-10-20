package AulaJAVA.entidades;

public class Agencia {
    private String numeroAgencia;
    private String telefone;
    private String email;

    public Agencia() {}
    
    //Constructor
    public Agencia(String numeroAgencia, String telefone, String email) {
        this.numeroAgencia = numeroAgencia;
        this.telefone = telefone;
        this.email = email;
    }

    //Getters
    public String getNumeroAgencia() {
        return numeroAgencia;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getEmail() {
        return email;
    }

    //Setters
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    

    
}
