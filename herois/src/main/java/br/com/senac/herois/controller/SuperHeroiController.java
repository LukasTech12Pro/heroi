package br.com.senac.herois.controller;

import br.com.senac.herois.model.Equipe;
import br.com.senac.herois.model.SuperHeroi;
import br.com.senac.herois.repository.EquipeRepository;
import br.com.senac.herois.repository.SuperHeroiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
public class SuperHeroiController {
    private SuperHeroiRepository superHeroiRepository;

    private EquipeRepository equipeRepository;

    @Autowired
    public SuperHeroiController(SuperHeroiRepository superHeroiRepository, EquipeRepository equipeRepository) {
        this.superHeroiRepository = superHeroiRepository;
        this.equipeRepository = equipeRepository;
    }

    @GetMapping("/superherois") //Listar todos os Super Herois cadastrados no Banco de Dados
    public ResponseEntity<?> getSuperHeroiList() {
        return new ResponseEntity<>(superHeroiRepository.findAll(), HttpStatus.OK);
    }

    @GetMapping("/superherois/{id}") //Listar todos os Super Herois pelo ID
    public ResponseEntity<?> getSuperHeroiId(@PathVariable Long id) {
        return new ResponseEntity<>(superHeroiRepository.findById(id), HttpStatus.OK);
    }

    @PostMapping("/superherois")
    public ResponseEntity<?> salvarSuperHeroi(@RequestBody SuperHeroi entity) {
        SuperHeroi superHeroiSalvo;
        Optional<Equipe> equipe = equipeRepository.findById(entity.getEquipe().getId());

        try {
            if (equipe.isPresent()) {
                entity.setEquipe(equipe.get());
            }
            superHeroiSalvo = superHeroiRepository.save(entity);
        } catch (Exception e) {
            return new ResponseEntity<String>("Erro ao salvar o Super Heroi", HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<SuperHeroi>(superHeroiSalvo, HttpStatus.OK);
    }

    @PutMapping("/superherois/{id}")
    public ResponseEntity<?> atualizarSuperHeroi(@PathVariable Long id, @RequestBody SuperHeroi entity) {
        Optional<SuperHeroi> superHeroiAtualizar = superHeroiRepository.findById(id);
        SuperHeroi sh = null;

        if (superHeroiAtualizar.isPresent()) {
            sh = superHeroiAtualizar.get();

            sh.setNome(entity.getNome());
            sh.setApelido(entity.getApelido());
            sh.setSuperPoder(entity.getSuperPoder());
            sh.setFraqueza(entity.getFraqueza());
            sh.setHistoriaOrigem(entity.getHistoriaOrigem());
            sh.setPrimeiraAparicao(entity.getPrimeiraAparicao());

            try {
                sh = superHeroiRepository.save(sh);
            } catch (Exception e) {
                return new ResponseEntity<String>("Erro ao salvar o Super Heroi", HttpStatus.BAD_REQUEST);
            }

            return new ResponseEntity<SuperHeroi>(sh, HttpStatus.OK);
        } else {
            return new ResponseEntity<String>("Super Heroi nao encontrado", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/superherois/{id}")
    public ResponseEntity<?> deleteSuperHeroi(@PathVariable Long id) {
        Optional<SuperHeroi> superHeroiExcluir = superHeroiRepository.findById(id);
        SuperHeroi sh = null;

        if (superHeroiExcluir.isPresent()) {
            sh = superHeroiExcluir.get();

            try {
                superHeroiRepository.delete(sh);
            } catch (Exception e) {
                return new ResponseEntity<String>("Erro ao excluir o Super Heroi", HttpStatus.BAD_REQUEST);
            }
            return new ResponseEntity<SuperHeroi>(sh, HttpStatus.OK);
        } else {
            return new ResponseEntity<String>("Super Heroi nao encontrado", HttpStatus.BAD_REQUEST);
        }
    }
}