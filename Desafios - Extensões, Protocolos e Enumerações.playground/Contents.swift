// Desafio 01 - Área
/*
 Crie um protocolo chamado “Area” que define uma propriedade que pode apenas ser lida, e não setada, que corresponde a área de determinada figura, com o tipo Double. Essa propriedade é definida como uma propriedade computada, mas lembre-se que no protocolo não há diferenciação entre propriedades armazenadas ou computadas, você apenas define uma propriedade.
 
 E então, crie duas classes (ou structs) que implementem o protocolo Area: Quadrado e Triangulo. Implemente o cálculo da área de acordo com cada figura (cada classe precisa receber os parâmetros necessários para o cálculo) e por fim, imprima o valor de cada área no console.
 */

protocol Area {
    var area: Double {get}
}

struct Quadrado: Area {
    var lado: Double
    var area: Double {
        return (lado * lado)
    }
}

struct Triangulo: Area {
    var base: Double
    var altura: Double
    var area: Double {
        return (base * altura) / 2
    }
}

let quadrado = Quadrado(lado: 7)
let triangulo = Triangulo(base: 2, altura: 5)
print("A área do quadrado é de \(quadrado.area)")
print("A área do triângulo é de \(triangulo.area)")



// Desafio 02 - Moedas
/*
 Veja o código abaixo:
 enum Moeda: Int {
   case UmCentavo = 1
   case CincoCentavos = 5
   case DezCentavos = 10
   case VinteCincoCentavos = 25
   case CinquentaCentavos = 50
 }

 let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
 
 De acordo com esse código, crie uma função que recebe como parâmetro um array do tipo “Moeda”. Faça a soma de todos os valores desse array segundo o raw value e retorne essa soma.

 No caso do exemplo acima, o que deve ser retornado da função é o valor 51, que é a soma de todas as moedas desse array declarado.

 */


enum Moeda: Int {
    case UmCentavo = 1
    case CincoCentavos = 5
    case DezCentaos = 10
    case VinteCincoCentavos = 25
    case CinquentaCentavos = 50
}

func contarMoedas(_ moedas: [Moeda]) -> Int {
    var soma = 0
    for valor in moedas {
        soma += valor.rawValue
    }
    return soma
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CinquentaCentavos, .DezCentaos, .VinteCincoCentavos]
contarMoedas(moedas)

// Uma curiosidade sobre o exercício 2 é que o método poderia ser implementado dentro da enumeração “Moeda”, veja abaixo como seria:
/*
 enum Moeda: Int {
   case UmCentavo = 1
   case CincoCentavos = 5
   case DezCentavos = 10
   case VinteCincoCentavos = 25
   case CinquentaCentavos = 50

   static func contarMoedas(_ moedas: [Self]) -> Int {
     var soma = 0
     for valor in moedas {
       soma += valor.rawValue
     }
     return soma
   }
 }

 let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
 Moeda.contarMoedas(moedas)
 */
