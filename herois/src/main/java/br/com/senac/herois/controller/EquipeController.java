package br.com.senac.herois.controller;

import br.com.senac.herois.model.Equipe;
import br.com.senac.herois.repository.EquipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
public class EquipeController {

    private EquipeRepository equipeRepository;

    @Autowired
    public EquipeController(EquipeRepository equipeRepository) {
        this.equipeRepository = equipeRepository;
    }

    @GetMapping("/equipes")
    public ResponseEntity<?> getEquipesList() {
        return new ResponseEntity<>(equipeRepository.findAll(), HttpStatus.OK);
    }

    @GetMapping("/equipes/{id}")
    public ResponseEntity<?> getEquipeByList(@PathVariable Long id) {
        return new ResponseEntity<>(equipeRepository.findById(id), HttpStatus.OK);
    }

    @PostMapping("/equipes")
    public ResponseEntity<?> salvarEquipes(@RequestBody Equipe entity) {
        Equipe equipeSalva;
        try {
            equipeSalva = equipeRepository.save(entity);
        } catch (Exception e) {
            return new ResponseEntity<String>("Erro ao salvar a equipe", HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<Equipe>(equipeSalva, HttpStatus.OK);
    }

    @PutMapping("/equipes/{id}")
    public ResponseEntity<?> atualizarEquipe(@PathVariable Long id, @RequestBody Equipe entity) {
        Optional<Equipe> equipeAtualizar = equipeRepository.findById(id);
        Equipe e = null;

        if (equipeAtualizar.isPresent()) {
            e = equipeAtualizar.get();

            e.setNome(entity.getNome());
            e.setSuperHerois(entity.getSuperHerois());

            try {
                e = equipeRepository.save(e);
            } catch (Exception e1) {
                return new ResponseEntity<String>("Erro ao salvar Equipe", HttpStatus.BAD_REQUEST);
            }

            return new ResponseEntity<Equipe>(e, HttpStatus.OK);
        } else {
            return new ResponseEntity<String>("Equipe não encontrado", HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/equipes/{id}")
    public ResponseEntity<?> deletarEquipe(@PathVariable Long id) {
        Optional<Equipe> equipeExcluir = equipeRepository.findById(id);
        Equipe e = null;

        if (equipeExcluir.isPresent()) {
            e = equipeExcluir.get();

            try {
                equipeRepository.delete(e);
            } catch (Exception e1) {
                return new ResponseEntity<String>("Erro ao excluir a equipe", HttpStatus.BAD_REQUEST);
            }
            return new ResponseEntity<Equipe>(e, HttpStatus.OK);
        } else {
            return new ResponseEntity<String>("Equipe não encontrado", HttpStatus.BAD_REQUEST);
        }
    }
}
