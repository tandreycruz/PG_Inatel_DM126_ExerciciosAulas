//3.2) Construa um algoritmo de adivinhação de números.
// O seu trabalho é elaborar um algoritmo em que o usuário possa digitar números no console até acertar o número inteiro aleatório valor inteiro, de 1 a 100.
// A cada chute, o programa deve responder com "chutou alto", "chutou baixo" ou "acertou".
// Após acertar, deve ser mostrado quantas tentativas foram usadas para descobrir o número.

var numerosChutados: [Int] = []
var numSorteado: Int
numSorteado = Int.random(in: 1...100)


func acertouNumero(_ num: Int) -> Bool
{
    if (num == numSorteado)
    {
        return true
    }
    else
    {
        numerosChutados.append(num)
        return false
    }
}


var numInformado: Int
var acertou: Bool = false
repeat
{
    print("Digite um número (1 a 100) ou digite 0 (zero) para sair: ")
    numInformado = Int(readLine()!)!
    acertou = acertouNumero(numInformado)
    if numInformado != 0
    {
        if acertou
        {
            print("Você acertou!")
        }
        else
        {
            if numInformado < numSorteado
            {
                print("Você errou. Chutou baixo.")
                print("Tente novamente ou digite 0 (zero) para sair.")
            }
            else if numInformado > numSorteado
            {
                print("Você errou. Chutou alto.")
                print("Tente novamente ou digite 0 (zero) para sair.")
            }
        }
    }
    else
    {
        acertou = true
    }
}
while !acertou


if (acertou) && (numInformado != 0)
{
    print("Qtde. Tentativas: \(numerosChutados.count)")
}