package Entidades;

public abstract class PessoaImc extends Pessoa{
    private Double peso;
    private Double altura;

    public PessoaImc() {}

    public PessoaImc( String nome, String dataNasc, double peso, double altura) {
        super(nome, dataNasc);
        this.peso = peso;
        this.altura = altura;
    }

    // Getters
    public double getPeso() {
        return this.peso;
    }

    public double getAltura() {
        return this.altura;
    }

    // método para o cálculo do IMC
    public double calculaImc(double altura, double peso) {
        double imc = peso / (altura * altura); 
        return imc;
    }

    public abstract String resultImc();

    public String toString() {
        return "Nome: " + getNome() + 
               "\nData de Nascimento: " + getDataNasc() +
               "\nPeso: " + getPeso() +
               "\nAltura: " + getAltura();
    }
}
