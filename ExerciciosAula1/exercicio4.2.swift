//4.2) Imagine que você foi ao restaurante com uma quantidade "n" de amigos e gastaram ao total um valor x.
// Faça um programa que contenha uma função que calcule quanto cada pessoa deva pagar.
// A função deve receber dois parâmetros: o valor total da conta e o número total de pessoas que irão dividir a conta.
// Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total.
// Retorne quanto cada pessoa deve pagar e exiba esse valor no console, fora da função.

print("Digite o valor da conta: ")
let valorTotalConta: Double = Double(readLine()!)!

print("Digite o número de colaboradores: ")
let totalColaboradores: Int = Int(readLine()!)!

func calcularValorIndividualColeta(_ valorTotalConta: Double, _ totalColaboradores: Int) -> Double
{
    let valorTotalComAdicional = valorTotalConta + (valorTotalConta * 10 / 100)
    return valorTotalComAdicional / Double(totalColaboradores)
}

print("Valor da Conta: \(valorTotalConta)")
print("Valor da Gorjeta: " + String((valorTotalConta * 10 / 100)))
print("Valor Total da Conta: \(valorTotalConta + (valorTotalConta * 10 / 100))")
print("Valor individual da coleta: \(calcularValorIndividualColeta(valorTotalConta, totalColaboradores))")