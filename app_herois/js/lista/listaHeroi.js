function getAllListaHeroi() {
    axios.get('http://localhost:8080/superherois')
    .then (function (response) {
        console.log(response);

        var heroes = response.data;
        var heroList = document.getElementById('heroi-list');

        heroList.innerHTML = '';

        heroes.forEach(heroi => {
            const card = document.createElement('div');
            card.classList.add('col');
            card.innerHTML = `
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${heroi.apelido}</h5>
                        <h6 class="card-subtitle">${heroi.nome}</h6>
                        <p class="card-text">${heroi.historiaOrigem}</p>
                        <p class="card-text"><strong>SuperPoder:</strong>${heroi.superPoder}</p>
                        <p class="card-text"><strong>Fraqueza:</strong>${heroi.fraqueza}</p>
                        <p class="card-text"><strong>Equipe:</strong></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-body-secondary">${heroi.primeiraAparicao}</small>
                        <div>
                            <button class="btn btn-primary btn-sm" onclick="editarHeroi(${heroi.id})">Editar</button>
                            <button class="btn btn-danger btn-sm" onclick="deletarSuperHerois(${heroi.id})">Deletar</button>
                        </div>
                    </div>
                </div>
            `;
            heroList.appendChild(card);
        });
    })
    .catch(function (error) {
        console.log('Erro ao buscar heróis:', error);
    });
}

function deletarSuperHerois(idSuperHeroi) {
    axios.delete('http://localhost:8080/superherois/' + idSuperHeroi)
    .then (function (response) {
        document.getElementById("successMessage").textContent = "Super Herói deletado com sucesso!";

        var myModal = new bootstrap.Modal(document.getElementById('successModal'));
        myModal.show();

        document.getElementById('successModal').addEventListener('hidden.bs.modal', function () {
            document.location = "listaHerois.html";
        });
    })
    .catch(function (error) {
        console.log("Erro ao deletar super herói:", error);
        document.getElementById("errorMessage").textContent = "Erro ao deletar o super herói. Tente novamente.";

        var myModal = new bootstrap.Modal(document.getElementById('errorModal'));
        myModal.show();
    });
}