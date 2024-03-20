import java.util.Scanner;

public class CaixaEletronico {
    static double saldo = 1000.00;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;
        
        mostrarSaldo();
        System.out.println("Escolha uma opção:");
        System.out.println("1 - Saque");
        System.out.println("2 - Depósito");
        System.out.println("3 - Consultar Saldo");
        opcao = scanner.nextInt();
        
        switch (opcao) {
            case 1:
                realizarSaque(scanner);
                break;
            case 2:
                realizarDeposito(scanner);
                break;
            case 3:
                mostrarSaldo();
                break;
            default:
                System.out.println("Opção inválida.");
        }
        scanner.close();
    }

    public static void realizarSaque(Scanner scanner) {
        System.out.println("Digite o valor do saque:");
        double valor = scanner.nextDouble();
        if (valor > saldo) {
            System.out.println("Saldo insuficiente.");
        } else {
            saldo -= valor;
            System.out.println("Saque de R$" + valor + " realizado.");
        }
    }

    public static void realizarDeposito(Scanner scanner) {
        System.out.println("Digite o valor do depósito:");
        double valor = scanner.nextDouble();
        saldo += valor;
        System.out.println("Depósito de R$" + valor + " realizado.");
    }

    public static void mostrarSaldo() {
        System.out.println("Seu saldo atual é: R$" + saldo);
    }
}