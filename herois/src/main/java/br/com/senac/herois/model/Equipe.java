package br.com.senac.herois.model;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table (name = "equipe")
public class                                                                         Equipe {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "NOME")
    private String nome;

    @OneToMany(mappedBy = "equipe")
    private List<SuperHeroi> superHerois;

    //Construtor
    public Equipe() {

    }
    public Equipe(Long id, String nome) {
        this.id = id;
        this.nome = nome;
    }


    //Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<SuperHeroi> getSuperHerois() {
        return superHerois;
    }

    public void setSuperHerois(List<SuperHeroi> superHerois) {
        this.superHerois = superHerois;
    }

    @Override
    public String toString() {
        return "Equipe{" +
                "id=" + id +
                ", nome='" + nome + '\'' +
                ", superHerois=" + superHerois +
                '}';
    }
}
