package Entidades;

public class Mulher extends PessoaImc {

    public Mulher(String nome, String dataNasc, double peso, double altura) {
        super(nome, dataNasc, peso, altura);
    }

    @Override
    public String resultImc() {
        if (calculaImc(getAltura(), getPeso()) <= 19) {
            return "Abaixo do peso ideal";
        } else if (calculaImc(getAltura(), getPeso()) <= 25.8) {
            return "Peso ideal";
        } else {
            return "Acima do peso ideal";
        }
    }
}
