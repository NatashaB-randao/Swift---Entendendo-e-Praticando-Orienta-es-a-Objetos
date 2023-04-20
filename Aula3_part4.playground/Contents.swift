// Para saber mais: modificadores de acesso em atributos e métodos

/*
 Você pode tornar um atributo ou um método privados. Isso significa que a instância não pode acessar esse atributo/método.
 
 Para fazer isso, basta colocar a palavra-chave private antes do atributo/método, como no exemplo abaixo:
 */

struct Pessoa {
  var nome: String
  var idade: Int
  var altura: Double
  var peso: Double

  private var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

let pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
// pessoa.imc -> Erro!


/*
 
 Agora, apenas a classe/struct em que você a definiu é quem pode acessar de fato esse atributo “IMC”. A instância não pode.

 Mas e se quisermos acessar uma propriedade mas prevenir de ser alterada? Para isso, basta utilizar o private(set). Veja no exemplo abaixo:
 
 */

struct Pessoa {
  // ... restante do código
  private(set) var altura: Double
}

var pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
print(pessoa.altura) // 1.78
// pessoa.altura = 1.80 -> Erro!
