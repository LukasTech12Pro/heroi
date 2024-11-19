package br.com.senac.herois.repository;

import br.com.senac.herois.model.Equipe;
import br.com.senac.herois.model.SuperHeroi;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;

public interface SuperHeroiRepository extends JpaRepository<SuperHeroi, Long> {
    ArrayList<SuperHeroi> findByApelidoLike(String apelido);
    ArrayList<SuperHeroi> findBySuperPoder(String superPoder);
    ArrayList<SuperHeroi> findByEquipe(Equipe equipe);
}
