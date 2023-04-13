// CLASSES
// No caso das classes, precisamos utilizar o que chamamos de "Construtor", que é o método que vai inicializar essas variáveis.

class ContaCorrente {
    var saldo: Double
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {        //Dentro no init precisa inicializar todos os atributos da classe
        saldo = 0.0
        self.nome = nome        //Significa que o atributo *nome* da classe ContaCorrente está sendo igualado a o que estamos recebendo como parâmetro nesse construtor.
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


// As structs precisam da palavra-chave mutating para as funções que alteram um atributo da struct.
// Porém, as structs possuem um inicializador que funciona "por debaixo dos panos", não precisamos defini-lo. Mas isso não acontece com classes. Com classes é obrigatório definir o construtor quando não estamos inicializando todos os atributos no momento de execução do código.
// A maneira de instância é a mesma que da struct, nem mudamos nada em relação às variáveis que criamos para instanciar uma classe. Tudo está funcionando como esperado.
