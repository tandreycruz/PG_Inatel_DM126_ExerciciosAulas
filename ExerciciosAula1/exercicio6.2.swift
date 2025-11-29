//6.2) Construa um algoritmo que receba 10 números inteiros aleatórios e armazene-os.
// Depois, crie automaticamente dois conjuntos, um contendo apenas os números pares e outro os números ímpares gerados.


var numeros: Set<Int> = [3, 2, 1, 6, 9, 8, 4, 11, 13, 22]
var pares: Set<Int> = []
var impares: Set<Int> = []

for num in numeros
{
    if num % 2 == 0
    {
        pares.insert(num)
    }
    else
    {
        impares.insert(num)
    }
}

for par in pares
{
    print("Pares: " + String(par))
}

for impar in impares
{
    print("Ímpares: " + String(impar))
}