const elements = {
    nome : document.getElementById("nome"),
    sobrenome: document.getElementById("sobrenome"),
    telefone: document.getElementById("tel"),
    email: document.getElementById("email"),
    mensagem: document.getElementById("msg"),
    lingua: document.getElementById("lingua"),
    proposito: document.getElementById("file"),
    linguagem: document.getElementById("linguagem"),
    db: document.getElementsByName("db"),
    turnoReuniao: document.getElementsByName("turno_reuniao"),
    horario: document.getElementById("horario"),
    data: document.getElementById("data")
}


function saveData() {
    //Salvando alguns dados
    let nome = elements.nome.value
    let sobrenome = elements.sobrenome.value
    let lingua = elements.lingua.value
    let horario = elements.horario.value
    let db = elements.db
    let dbValue;
    //Para saber qual radioButton foi selecionado
    for (let i = 0; i < db.length; i++){
        if(db[i].checked){
            dbValue = db[i].value;
        }
    }

    let freela = {
        "nome": nome,
        "sobrenome": sobrenome,
        "lingua": lingua,
        "horario": horario,
        "db": dbValue
    }
    
    //Salvando no localStorage
    localStorage.setItem(`${nome} ${sobrenome}`, JSON.stringify(freela))
}

function clearData() {

}
