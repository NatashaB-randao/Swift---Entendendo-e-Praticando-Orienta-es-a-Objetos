// HERANÇA

class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func despositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: Conta {            //A classe está herdando atributos e métodos da classe conta
    var possuiCartaoDebito = false
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão de débito")
    }
}

var contaPoupanca = ContaPoupanca(nome: "Natasha")
contaPoupanca.despositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando empréstimo no valor de \(valor)")
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.despositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)


/*
 há uma maneira de fazer com que uma classe não seja herdada por outra?
 Para impedir uma classe de herdar outra, você precisa apenas adicionar a palavra-chave final antes de class. Veja um exemplo abaixo:
 
 final class Pessoa {}

 // class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada
 
 */
