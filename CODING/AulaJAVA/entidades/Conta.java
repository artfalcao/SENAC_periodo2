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
    public boolean depositar(double valor) {
        if (valor > 0) {
            this.saldo += valor;
            return true;
        } else {
            return false;
        }

    }

    public boolean sacar(double valor) {
        if (this.saldo + this.limite >= valor) {
            this.saldo -= valor;
            return true;
        } else {
            return false;
        }
    }

    // Método p/ Transferência
    public boolean transferir(double valor, Conta contaFav) {
        if (contaFav != null) {
            if (this.saldo + this.limite >= valor) {
                this.saldo -= valor;
                contaFav.saldo += valor;
                return true;
            } else {
                return alse;
            }
        } else {
            return false;
        }
    }

    // Método Encerrar Conta
    protected void encerrarConta() {
        status = false;
    }

    public String toString() {
        return "Cliente: " + this.cliente.getNome() + " | " + "Telefone: " + this.cliente.getTelefone();
    }

}
