import java.util.ArrayList;
import java.util.Scanner;

import Entidades.Homem;
import Entidades.Mulher;
import Entidades.PessoaImc;

public class TesteImc {
    public static void main(String[] args) throws Exception {
        ArrayList<PessoaImc> PessoasImc = new ArrayList();

        System.out.println("Quantas pessoas você deseja cadastrar?");
        Scanner numPessoas = new Scanner(System.in);
        String numP = numPessoas.next();
        int num = Integer.parseInt(numP);
        
        // Realizar o cadastro de "num" pessoas
        while ( num > 0 ) {
            int i = 1;
            System.out.println("\nQual o sexo da pessoa que irá ser adicionada?\nDigite '1' para MASCULINO e '2' para FEMININO");
            Scanner sexoPessoa = new Scanner(System.in);
            String tipoSexo = sexoPessoa.next();
            int sexo = Integer.parseInt(tipoSexo);

            System.out.println("\nInsira o nome da " + i + "º pessoa: ");
            Scanner nomePessoa = new Scanner(System.in);
            String nome = nomePessoa.next();
            

            System.out.println("\nInsira a data de nascimento da " + i + "º pessoa: ");
            Scanner dataNasc = new Scanner(System.in);
            String dataNascimento = dataNasc.next();

            System.out.println("\nInsira o peso da " + i + "º pessoa: ");
            Scanner pessoaPeso = new Scanner(System.in);
            String peso = pessoaPeso.next();
            double pesoConvertido = Double.parseDouble(peso); 

            System.out.println("\nInsira a altura da " + i + "º pessoa: ");
            Scanner pessoaAltura = new Scanner(System.in);
            String altura = pessoaAltura.next();
            double alturaConvertida = Double.parseDouble(altura); 

            System.out.println("---------------------------------------------------------------");

            if ( sexo == 1 ) {
                PessoasImc.add(new Homem(nome, dataNascimento, pesoConvertido, alturaConvertida));
            } else {
                PessoasImc.add(new Mulher(nome, dataNascimento, pesoConvertido, alturaConvertida));
            }

            num--;
            i++;
        }

        // Exibir os dados das pessoas cadastradas
        System.out.println("\nPESSOAS CADASTRADAS:");
        for (PessoaImc pessoaImc : PessoasImc) {
            System.out.println(pessoaImc.toString());
            System.out.println("\n " + pessoaImc.calculaImc(pessoaImc.getAltura(), pessoaImc.getPeso()));
            System.out.println("\n " + pessoaImc.resultImc()); ;
            System.out.println("---------------------------------------------------------------");
        }
    }
}