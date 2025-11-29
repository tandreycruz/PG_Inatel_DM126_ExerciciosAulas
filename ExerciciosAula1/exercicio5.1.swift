//5.1) Crie uma função que receba um parâmetro que representa o nome de uma pessoa. Esse parâmetro é um opcional, ou seja, ele pode conter um valor ou ser nulo.
//Faça o tratamento correto dessa opcional:
//Caso seja nulo, exiba no console "Nome não especificado";
//Caso contenha algum valor, exiba no console esse valor.

let nomePessoa: String? = readLine()

func verificarNome(_ nomePessoa: String?)
{
    if (nomePessoa == nil || nomePessoa!.isEmpty)
    {
        print("Nome não especificado.")
    }
    else
    {
        print("Nome: " + nomePessoa!)
    }
}

verificarNome(nomePessoa)