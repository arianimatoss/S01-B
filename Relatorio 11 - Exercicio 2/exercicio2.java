import java.util.ArrayList;

class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double calcularPrecoFinal() {
        return preco;
    }
}

class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}

class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        System.out.println("\n=== CARDÁPIO ===");

        for (Cafe cafe : cafes) {
            System.out.printf(
                "%s - R$ %.2f%n",
                cafe.getNome(),
                cafe.calcularPrecoFinal()
            );
        }
    }
}

class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        menu = new Menu();
    }

    public void adicionarCafe(Cafe cafe) {
        menu.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo à Cafeteria Leblanc!");
        menu.exibirMenu();
    }
}

public class Main {
    public static void main(String[] args) {

        Cafe cafeSimples = new Cafe(
            "Café Tradicional",
            6.50
        );

        Cafe cafeExpresso = new Cafe(
            "Café Expresso",
            8.00
        );

        CafeGourmet cafeGourmet = new CafeGourmet(
            "Café Gourmet Especial",
            12.00,
            4.50
        );

        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();

        leblanc.adicionarCafe(cafeSimples);
        leblanc.adicionarCafe(cafeExpresso);
        leblanc.adicionarCafe(cafeGourmet);

        leblanc.abrirCafeteria();
    }
}