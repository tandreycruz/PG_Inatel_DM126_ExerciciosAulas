//1.3) Desenvolva um código que leia a largura, altura e profundidade de um livro.
//Calcule seu volume e exiba na saída se ele é ou não maior que 1000.
//Por fim, exiba o tipo da variável que armazenou o volume final. (Dica: não é necessário estrutura de decisão).


let largura = Double(readLine()!)!
let altura = Double(readLine()!)!
let profundidade = Double(readLine()!)!

let volume = largura*altura*profundidade

print ("Volume: \(volume)")
print ("O volume é maior que 1000? \(volume > 1000)")
print ("Tipo da variável volume: \(type(of: volume))")