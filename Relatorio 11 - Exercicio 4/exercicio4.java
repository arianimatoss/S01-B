import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}

class Lagosta extends Monstro {

    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println(
            getNome() + " foi preparada por Senshi como uma deliciosa lagosta grelhada."
        );
    }
}

class Cogumelo extends Monstro {

    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println(
            getNome() + " foi preparado por Senshi em um ensopado de cogumelos."
        );
    }
}

class Tempero {
    private String nome;
    private String quantidade;

    public Tempero(String nome, String quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public String getQuantidade() {
        return quantidade;
    }
}

class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Sal de Pedra", "10g");
    }

    public void servir() {
        System.out.println("\nPrato: " + nome);
        monstro.virarPrato();
        System.out.println(
            "Tempero utilizado: " +
            tempero.getNome() +
            " - " +
            tempero.getQuantidade()
        );
    }
}

public class Main {
    public static void main(String[] args) {

        Lagosta lagosta = new Lagosta("Lagosta Gigante");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Andante");

        Prato pratoLagosta = new Prato(
            "Lagosta Grelhada",
            lagosta
        );

        Prato pratoCogumelo = new Prato(
            "Ensopado de Cogumelos",
            cogumelo
        );

        pratoLagosta.servir();
        pratoCogumelo.servir();

        ArrayList<Prato> cardapio = new ArrayList<>();

        cardapio.add(pratoLagosta);
        cardapio.add(pratoCogumelo);

        System.out.println("\n=== CARDÁPIO DA EXPEDIÇÃO ===");

        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}