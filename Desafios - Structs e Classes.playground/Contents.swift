// Desafio 1 - Calculadora

/*
1 - Crie uma classe/struct (a seu critério) chamada “Calculadora” que possua dois diferentes números como atributos;
 A. Esses números podem ser inteiros ou decimais, à sua escolha, e precisam ser inicializados pelo construtor de acordo com o que foi recebido por parâmetro;
 
2 - Produza 4 métodos referentes às operações básicas de cálculo: soma, subtração, divisão e multiplicação;
 A. Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades citadas anteriormente;
 
3 - Instancie essa classe/struct com os dois valores em questão e chame todos os métodos citados;
 
4 - Por fim, exiba no console o resultado de todas as operações.*/


struct Calculadora {
    let numero1: Double
    let numero2: Double
    
    func soma() -> Double {
        return numero1 + numero2
    }
    
    func subtracao() -> Double {
        return numero1 - numero2
    }
    
    func divisao() -> Double {
        return numero1 / numero2
    }
    
    func multiplicacao() -> Double {
        return numero1 * numero2
    }
}

let calculadora = Calculadora(numero1: 8, numero2: 2)
print("Soma = \(calculadora.soma())")
print("Subtração = \(calculadora.subtracao())")
print("Divisão = \(calculadora.divisao())")
print("Multiplicação = \(calculadora.multiplicacao())")



// Desafio 2 - Restaurante
/*
Crie uma classe/struct chamada “Restaurante” que tenha os seguintes atributos:
 Nome;
 Tipo de comida;
 Número de pedidos (esse sempre será inicializado como 0 no construtor).
 
E então, implemente o seguinte método:

 .recebePedido() → esse método acrescenta em 1 o valor do atributo referente ao número de pedidos;
 .calculaTotalPedidos() → supondo que cada pedido tenha um valor fixo de R$35,00, crie um método que calcule e retorne o valor total em pedidos.
 */


struct Restaurante {
    var nome: String
    var tipoDeComida: String
    var numeroDePedidos: Int = 0
    
    mutating func recebePedidos() {
        self.numeroDePedidos += 1
    }
    
    func calculoTotalPedidos() -> Double {
        return 35.0 * Double(self.numeroDePedidos)
    }
}

var restaurante = Restaurante(nome: "Restaurante NB", tipoDeComida: "Comida Mexicana")
restaurante.recebePedidos()
restaurante.recebePedidos()
restaurante.calculoTotalPedidos()
print("Valor total em pedidos: \(restaurante.calculoTotalPedidos())")




// Desafio 3 - Retângulo
/*
Crie uma classe/struct chamada “Retângulo” que tenha os seguintes atributos:
 .Base;
 .Altura.
E então, implemente os seguintes métodos:
 .calcularArea() - retorna a área do retângulo, que é calculada por base multiplicado pela altura;
 .calcularPerimetro() - retorna o perimêtro do retângulo, que é calculado pela soma de todos os lados.
 */

struct Retangulo {
    var altura: Double = 0.0
    var base: Double = 0.0
    
    func calcularArea() -> Double {
        return base * altura
    }
    
    func calcularPerimetro() -> Double {
        return (base * 2) + (altura * 2)
    }
}

var retangulo = Retangulo(altura: 15, base: 8)
print("A área do retângulo é igual à: \(retangulo.calcularArea())")
print("O perímetro do retângulo é igua à: \(retangulo.calcularPerimetro())")
