import java.util.ArrayList;

abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}

class Mago extends Personagem {
    private String habilidadeMagica;

    public Mago(String nome, int idade, String habilidadeMagica) {
        super(nome, idade);
        this.habilidadeMagica = habilidadeMagica;
    }

    @Override
    public void apresentar() {
        System.out.println(
            "Olá! Meu nome é " + getNome() +
            ", tenho " + getIdade() +
            " anos e minha habilidade mágica é " +
            habilidadeMagica + "."
        );
    }
}

class Divisao {
    private String nome;
    private String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }

    @Override
    public String toString() {
        return "Divisão: " + nome + " | Função: " + funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        System.out.println("\n=== Divisões do Castelo ===");
        for (Divisao divisao : divisoes) {
            System.out.println(divisao);
        }
    }
}

public class Main {
    public static void main(String[] args) {

        Mago howl = new Mago(
            "Howl",
            27,
            "Transformação e controle do fogo"
        );

        howl.apresentar();

        Divisao quarto = new Divisao(
            "Quarto",
            "Descanso dos moradores"
        );

        Divisao laboratorio = new Divisao(
            "Laboratório",
            "Pesquisas mágicas"
        );

        Divisao salaMagica = new Divisao(
            "Sala Mágica",
            "Treinamento de feitiços"
        );

        ArrayList<Divisao> listaDivisoes = new ArrayList<>();
        listaDivisoes.add(quarto);
        listaDivisoes.add(laboratorio);

        CasteloAnimado castelo = new CasteloAnimado(listaDivisoes);

        castelo.adicionarDivisao(salaMagica);

        castelo.listarDivisoes();
    }
}