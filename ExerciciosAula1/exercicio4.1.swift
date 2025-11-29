//4.1) Escreva uma função que receba um parâmetro do tipo Int e verifique se esse número é primo ou não.
//O retorno dessa função pode ser um booleano, representando true se for primo ou false se não for primo.

let num: Int = Int(readLine()!)!

func numeroPrimo(_ numero: Int) -> Bool
{
    if (numero % 1 == 0) && (numero % numero == 0) && (numero % 2 != 0)
    {
        return true
    }
    else
    {
        return false
    }
}

print(numeroPrimo(num))