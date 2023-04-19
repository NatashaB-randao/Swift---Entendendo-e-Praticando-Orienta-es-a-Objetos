// POLIMORFISSMO E TYPECASTING

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
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão de débito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Natasha", possuiCartaoDebito: false)
contaPoupanca.despositar(50)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando empréstimo no valor de \(valor)")
        super.despositar(valor)             //Super é quando fazemos referência a classe pai
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.despositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)


//Polimorfismo -> é a habilidade de tratar os objetos de maneira diferente dependendo do contexto em que estão inseridos
func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("A conta é do tipo Conta Corrente")
    }
    
    //Typecasting (as?) -> verificação
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {
        return
    }
    print(contaPoupanca.possuiCartaoDebito)
    
    
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)
