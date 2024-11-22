const toggleButtion = document.getElementById('toggle-theme');

function toggleDarkMode() {
    document.body.classList.toggle('bg-dark');
    document.body.classList.toggle('text-light');

    //Salvar a escolha no localStorage
    const isDarkMode = document.body.classList.contains('bg-dark');
    localStorage.setItem('dark-mode', isDarkMode ? 'enable' : 'disable');
}

//Verificar se o estado do tema no localStorage ao carregar a página
if (localStorage.getItem('dark-mode') === 'enable') {
    document.body.classList.add('bg-dark');
    document.body.classList.add('text-light');

}