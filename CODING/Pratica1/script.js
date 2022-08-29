let users = [
    {
        nome: 'Arthur',
        nasc: '17/11/1995',
        nac: 'Brasil',
        prof: 'TI'
    }
]

function saveUser() {
    const $userName = document.getElementById('nome').value
    const $nasc = document.getElementById('nasc').value
    const $nac = document.getElementById('nac').value
    const $prof = document.getElementById('prof').value
    const $tabelaUsers = document.getElementById('tabela-users')

    users.push({
        nome: $userName,
        nasc: $nasc,
        nasc: $nac,
        prof: $prof
    })

    let i = users.length -1

    console.log(users[i].nome, users[i].nasc, users[i].nac, users[i].prof)
    
    $tabelaUsers.innerHTML += `
        <td>${users[i].nome}</td>
        <td>${users[i].nac}</td>
        <td>${users[i].nasc}</td>
        <td>${users[i].prof}</td>
    `  
}