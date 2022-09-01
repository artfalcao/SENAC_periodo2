let users = [
    {
        nome: 'Arthur',
        nasc: '17/11/1995',
        nac: 'Brasil',
        prof: 'TI'
    }
]

function registerUser() {
    const $userName = document.getElementById('nome').value
    const $nasc = document.getElementById('nasc').value
    const $nac = document.getElementById('nac').value
    const $prof = document.getElementById('prof').value
    const $tabelaUsers = document.getElementById('info-users-main')
    
    //CREATE
    users.push({
        nome: $userName,
        nasc: $nasc,
        nasc: $nac,
        prof: $prof
    })
    
    localStorage.setItem("info-users-main", JSON.stringify(users))

    //UPDATE
    $tabelaUsers.innerHTML += `
    <div class="info-users-body">
        <p>${$userName}</p>
        <p>${$nasc}</p>
        <p>${$nac}</p>
        <p>${$prof}</p>
    </div>
    `
    
    //READ
    return localStorage.info-users-main ? JSON.parse(localStorage.info-users-main) : []
    
    
        

    
     
}


