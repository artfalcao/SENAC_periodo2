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


function saveData() {

    let nome = elements.nome.value
    let sobrenome = elements.sobrenome.value
    let telefone = elements.telefone.value
    let email = elements.email.value
    let mensagem = elements.mensagem.value
    //let turnoReuniao = elements.turnoReuniao
    let data = elements.data.value

    /*
    console.log(nome)
    console.log(sobrenome)
    console.log(telefone)
    console.log(email)
    console.log(mensagem)
    console.log(data)
    */
    try {
        /* VALIDAÇÕES */

        // 1- Campos Vazios
        if (nome == '' || sobrenome == '' || telefone == '' || email == '' || mensagem == '' || data == '' ) {
            throw "Campos Obrigatórios Vazios"
        }


        /* SALVAR DADOS */
        let freela = {
            "nome": nome,
            "sobrenome": sobrenome,
            "telefone": telefone,
            "email": email,
            "mensagem": mensagem,
            //"turnoReuniao": turnoReuniao,
            "data": data
        }
        
        localStorage.setItem(`${nome} ${sobrenome}`, JSON.stringify(freela))
        
    } catch (error) {
        alert(error) 
    }
    
    
}


function clearData() {

    const form = document.querySelector("form")

    form.reset()
    
}
