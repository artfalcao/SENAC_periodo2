// Alt+Shift+F para identar corretamente
package AulaJAVA;

import java.util.Date;

import AulaJAVA.entidades.Agencia;
import AulaJAVA.entidades.Cliente;

public class Principal {
    public static void main(String[] args) {

        Cliente cliente1 = new Cliente("Arthur Monteiro", "999.888.777-66", "arthur@teste.com", "(81) 9 9999-8888", new Date());

        Cliente cliente2 = new Cliente("Kayo Farias", "111.222.333-44", "kayo@teste.com", "(81) 9 9999-0000", new Date());
        
        System.out.println(cliente1.getNome());
        System.out.println(cliente2.getEmail()); 

        Agencia agencia1 = new Agencia("0879-1", "(81) 33344-5566", "agencia1@teste.com");
        
        System.out.println(agencia1.getNumeroAgencia()); 
    }

}
