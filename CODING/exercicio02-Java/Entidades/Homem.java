package Entidades;

public class Homem extends PessoaImc {

    public Homem(String nome, String dataNasc, double peso, double altura) {
        super(nome, dataNasc, peso, altura);
    }

    @Override
    public String resultImc() {
        if (calculaImc(getAltura(), getPeso()) <= 20.7) {
            return "Abaixo do peso ideal";
        } else if (calculaImc(getAltura(), getPeso()) <= 26.4) {
            return "Peso ideal";
        } else {
            return "Acima do peso ideal";
        }
    }
}
