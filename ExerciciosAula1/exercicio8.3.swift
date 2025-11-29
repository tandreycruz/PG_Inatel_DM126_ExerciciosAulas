//8.3) Crie uma classe/struct chamada "Retângulo" que tenha os seguintes atributos:
//- Base;
//- Altura.

// E então, implemente os seguintes métodos:
//- calcularArea() - retorna a área do retângulo, que é calculada por base multiplicado pela altura;
//- calcularPerimetro() - retorna o perímetro do retângulo, que é calculado pela soma de todos os lados.




class Retangulo
{
    var base: Int
    var altura: Int
    
    init(_ base: Int, _ altura: Int)
    {
        self.base = base
        self.altura = altura
    }
    
    func calcularArea() -> Int
    {
        return self.base * self.altura
    }
    
    func calcularPerimetro() -> Int
    {
        return (self.base * 2) + (self.altura * 2)
    }
}

var retangulo = Retangulo(10, 5)

print("Base do Retângulo: \(retangulo.base)")
print("Altura do Retângulo: \(retangulo.altura)")
print("Área do Retângulo: \(retangulo.calcularArea())")
print("Perímetro do Retângulo: \(retangulo.calcularPerimetro())")