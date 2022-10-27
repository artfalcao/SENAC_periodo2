// Alt+Shift+F para identar corretamente
package AulaJAVA;

import java.util.Date;

import AulaJAVA.entidades.Agencia;
import AulaJAVA.entidades.Cliente;
import AulaJAVA.entidades.Endereco;

public class Principal {
    public static void main(String[] args) {

        // Criando enderecos de agencia e de clientes
        Endereco endAgencia = new Endereco("PE", "Recife", "Santo Amaro", "Rua do Pombal", 300, "Predio", "50070-900");
        Endereco endCliente = new Endereco("PE", "Jaboatao", "Setubal", "Avenida Sa e Souza", 900, "Predio",
                "58880-333");

        // Criando Clientes
        Cliente cliente1 = new Cliente("Arthur Monteiro", "999.888.777-66", "arthur@teste.com", "(81) 9 9999-8888",
                new Date(), endCliente);

        //Criando Agencias
        Agencia agencia1 = new Agencia("0099-01", "(81) 3455-8877", "agencia1@teste.com", endAgencia);

        //Criando Contas
        Conta contaCliente1 = new Conta(cliente1, agencia1, 0, 5000, "44556600");

        //TESTE
        System.out.println(endAgencia.getUf());
        System.out.println(cliente1.getNome());
        System.out.println(agencia1.getNumeroAgencia());
    }

}