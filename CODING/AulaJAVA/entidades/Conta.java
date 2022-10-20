package AulaJAVA.entidades;

public class Conta {
    private Cliente cliente;
    private Agencia agencia;
    private double saldo;
    private double limite;
    private String numeroConta;
    private Boolean status = true;

    // Constructor Vazio
    public Conta() {

    }

    // Constructor Full
    public Conta(Cliente cliente, Agencia agencia, double saldo, double limite, String numeroConta) {
        this.cliente = cliente;
        this.agencia = agencia;
        this.saldo = saldo;
        this.limite = limite;
        this.numeroConta = numeroConta;
        this.status = true;
    }

    // Getters
    public Cliente getCliente() {
        return cliente;
    }

    public Agencia getAgencia() {
        return agencia;
    }

    public double getSaldo() {
        return saldo;
    }

    public double getLimite() {
        return limite;
    }

    public String getNumeroConta() {
        return numeroConta;
    }

    public Boolean getStatus() {
        return status;
    }

    // Setters
    public void setAgencia(Agencia agencia) {
        this.agencia = agencia;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    // Métodos Depositar / Sacar
    public double depositar(Float valor) {
        saldo = this.saldo + valor;
        return saldo;
    }

    public double sacar(Float valor) {
        saldo = this.saldo - valor;
        return saldo;
    }

    // Método Encerrar Conta
    protected void encerrarConta() {
        status = false;
    }

}
