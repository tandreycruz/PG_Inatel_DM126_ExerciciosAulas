//6.1) Pense num aplicativo que faz o cálculo da média de notas de alunos de uma turma.
// Ainda não podemos produzir o aplicativo, mas vamos usar essa situação para praticar um pouco:
//Escreva uma função que receba um array de notas de um determinado aluno e retorne a média aritmética dessas notas.

var notasAlunos: [Double] = [7.50, 8.00, 10.00, 9.00, 6.50, 10.00, 9.50]

func mediaAritmetica(notasAlunos: [Double]) -> Double
{
    var somaNotas: Double = 0.0
    for nota in notasAlunos
    {
        somaNotas = somaNotas + nota
    }
    return somaNotas / Double(notasAlunos.count)
}

print("Média Aritmética: \(mediaAritmetica(notasAlunos: notasAlunos))")