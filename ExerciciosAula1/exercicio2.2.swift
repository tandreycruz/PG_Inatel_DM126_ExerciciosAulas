//2.2) Crie um programa que valida a idade de uma pessoa e se ela possui ou não um documento 
//como comprovante.  O programa deve utilizar duas constantes e ler os valores da entrada. Caso a 
// tenha mais de 18 anos e possua um documento válido, o programa deve exibir “Acesso 
//liberado”, do contrário, exibe “Acesso negado”.

//Dica: o método readline retorna uma String? (opcional). Podemos fazer uma conversão de tipos 
//para garantir a interpretação que desejamos, ex: let altura = float(readLine()!)!


print("Informe a idade: ")
let idade = Int(readLine()!)!
print("Existe documento válido (true/false): ")
let possuiDocumentoValido = Bool(readLine()!)!

if (idade > 18) && (possuiDocumentoValido)
{
    print("Acesso Liberado.")
}
else
{
    print("Acesso Negado.")
}