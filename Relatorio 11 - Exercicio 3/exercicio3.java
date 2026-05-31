import java.util.HashMap;
import java.util.Map;

interface Rastreavel {
    String obterCoordenadas();
}

class Poder {
    private String nome;
    private int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }

    public String getNome() {
        return nome;
    }

    public int getIntensidade() {
        return intensidade;
    }
}

class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome, String nomePoder, int intensidade) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidade);
    }

    @Override
    public String obterCoordenadas() {
        return "Setor Alpha-X";
    }
}

class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome, String nomePoder, int intensidade) {
        super(nome);
        this.poder = new Poder(nomePoder, intensidade);
    }

    @Override
    public String obterCoordenadas() {
        return "Floresta Espiritual-Y";
    }
}

class RegistroOculto {
    private HashMap<String, Entidade> entidades;

    public RegistroOculto() {
        entidades = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        if (entidades.containsKey(entidade.getNome())) {
            System.out.println("Aviso: " + entidade.getNome() + " já está registrada.");
            return;
        }

        entidades.put(entidade.getNome(), entidade);
        System.out.println(entidade.getNome() + " registrada com sucesso.");
    }

    public void listarEntidades() {
        System.out.println("\n=== REGISTRO OCULTO ===");

        for (Map.Entry<String, Entidade> item : entidades.entrySet()) {
            Entidade entidade = item.getValue();

            if (entidade instanceof Rastreavel) {
                Rastreavel rastreavel = (Rastreavel) entidade;

                System.out.println(
                    "Nome: " + entidade.getNome() +
                    " | Coordenadas: " +
                    rastreavel.obterCoordenadas()
                );
            }
        }
    }
}

public class Main {
    public static void main(String[] args) {

        Alien alien1 = new Alien(
            "Zorg",
            "Raio Cósmico",
            90
        );

        Alien alien2 = new Alien(
            "Krex",
            "Teletransporte",
            80
        );

        Youkai youkai1 = new Youkai(
            "Kitsune",
            "Ilusão",
            75
        );

        Youkai youkai2 = new Youkai(
            "Oni",
            "Super Força",
            95
        );

        RegistroOculto registro = new RegistroOculto();

        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}