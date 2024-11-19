
function getAllListaEquipe() {
    axios.get('http://localhost:8080/equipes')
    .then (function (response) {
        console.log(response);

        var equipes = response.data;
        var equipeList = document.getElementById('equipe-list');

        equipeList.innerHTML = '';

        equipes.forEach(equipe => {
            const card = document.createElement('div');
            card.classList.add('col');
            card.innerHTML = `
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${equipe.nome}</h5>
                    </div>
                </div>
            `;
            equipeList.appendChild(card);
        })
    })
    .catch(function (error) {
        console.log('Erro ao buscar equipes:', error);
    });
}