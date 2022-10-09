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
    turnoReuniao: document.querySelector('input[type="checkbox"]:checked'),
    horario: document.getElementById("horario"),
    data: document.getElementById("data")
}


function validateData() {

}


function saveData(event) {

    event.preventDefault()
    
    let nome = elements.nome.value
    let sobrenome = elements.sobrenome.value
    let telefone = elements.telefone.value
    let email = elements.email.value
    let mensagem = elements.mensagem.value
    //let turnoReuniao = elements.turnoReuniao
    let data = elements.data.value


    let freela = {
        "nome": nome,
        "sobrenome": sobrenome,
        "telefone": telefone,
        "email": email,
        "mensagem": mensagem,
        //"turnoReuniao": turnoReuniao,
        "data": data
    }

    //Salvando campos obrigratórios no localStorage
    localStorage.setItem(`${nome} ${sobrenome}`, JSON.stringify(freela))
}


function clearData(event) {

    const form = document.querySelector("form")

    event.preventDefault()

    form.reset()
    
}
