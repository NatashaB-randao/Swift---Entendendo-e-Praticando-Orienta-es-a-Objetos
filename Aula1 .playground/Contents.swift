// STRUCT
// Struct funciona como um molde; representa os dados
// Instanciar a Struct = criar objetos
// Atributos = Variáveis
// Métodos = Funções
// Quando utlizamos Structs nós não podemos alterar um atributo da struct dentro de uma função
// Mutating -> quando podemos, de fato, alterar um atributo da struct dentro de um método.

struct ContaCorrente {
    var saldo: Double = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteNatasha = ContaCorrente(nome: "Natasha")         //atribuindo a variável a instância de conta corrente
//Agora é possível acessar atributos e métodos da struct
print(contaCorrenteNatasha.saldo)
contaCorrenteNatasha.depositar(1500)
print(contaCorrenteNatasha.saldo)

var contaCorrenteVitor = ContaCorrente(nome: "Vitor")
contaCorrenteVitor.depositar(250)
print(contaCorrenteVitor.saldo)
contaCorrenteVitor.sacar(100)
print(contaCorrenteVitor.saldo)


// As structs são um tipo de dado complexo e você pode definir suas próprias structs, com seus próprios atributos e métodos.
