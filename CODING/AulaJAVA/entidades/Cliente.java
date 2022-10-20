package AulaJAVA.entidades;

import java.util.Date;

public class Cliente {
    private String nome;
    private String cpf;
    private String email;
    private String telefone;
    private Date dataNasc;

    // Construtor Vazio - Para executar testes
    public Cliente() {

    }

    // Constructor Full - Para gerar automático clicar Ctrl+.
    public Cliente(String nome, String cpf, String email, String telefone, Date dataNasc) {
        this.nome = nome;
        this.cpf = cpf;
        this.email = email;
        this.telefone = telefone;
        this.dataNasc = dataNasc;
    }

    // Getters
    public String getNome() {
        return nome;
    }

    public String getCpf() {
        return cpf;
    }

    public String getEmail() {
        return email;
    }

    public String getTelefone() {
        return telefone;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    // Setters
    public void setEmail(String email) {
        // Tratando Errors
        try {
            if (email.isEmpty()) {
                throw new Error("Email vazio!");
            } else if (email == this.email) {
                throw new Error("Email igual ao já cadastrado!");
            } else {
                this.email = email;
            }
            // Usar REGEX p/ Tratamento de Errors
        } catch (Exception e) {
            // Handle Exception
            System.out.println("Erro: " + e);
        }
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
}
