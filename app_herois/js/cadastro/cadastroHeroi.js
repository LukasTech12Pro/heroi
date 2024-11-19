
function carregarSelect() {
    axios.get('http://localhost:8080/equipes')
    .then(function (response) {
        var jsonData = response.data;
        var select = $("#equipe");

        jsonData.forEach(equipe => {
            optionText = equipe.nome;
            optionValue = equipe.id;
            let optionHTML = `<option value = "${optionValue}"> ${optionText} </option>`;
            select.append(optionHTML);
        });
    })
    .catch(function (error) {
        console.log(error);
    });
}

function cadastrarHeroi() {
    var nome = $("#nomeHeroi").val();
    var apelido = $("#apelido").val();
    var superPoder = $("#superPoder").val();
    var fraqueza = $("#fraqueza").val();
    var historiaOrigem = $("#historiaOrigem").val();
    var primeiraAparicao = $("#primeiraAparicao").val();
    var equipe = $("#equipe").val();
    
    axios.post('http://localhost:8080/superherois', {
        "nomeHeroi" : nome,
        "apelido" : apelido,
        "superPoder" : superPoder,
        "fraqueza" : fraqueza,
        "historiaOrigem" : historiaOrigem,
        "primeiraAparicao" : primeiraAparicao,
        "equipe" : {
            "id" : equipe
        }
    })
    .then(function (response) {
        document.getElementById("successMessage").textContent = "Produto cadastrado com sucesso!";

        //Abre o modal
        var myModal = new bootstrap.Modal(document.getElementById('successModal'));
        myModal.show();

        //Configura o botão para redirecionar para a lista de produtos
        document.getElementById('successModal').addEventListener('hidden.bs.modal', function () {
            document.location = "cadHerois.html";
        });
    })
    .catch(function (error) {
        console.log("Erro ao cadastrar produto:", error);
        document.getElementById("errorMessage").textContent = "Error ao cadastrar produto. Tente novamente.";

        //abre o modal
        var myModal = new bootstrap.Modal(document.getElementById('errorModal'));
        myModal.show();
    });
}

carregarSelect();