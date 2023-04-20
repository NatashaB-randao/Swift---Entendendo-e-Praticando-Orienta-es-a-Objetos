//Propriedades armazenadas, computadas e estáticas

// Propriedade Armazenada -> é uma propriedade comum.

// Propriedades computadas -> podemos realizar cálculos através das propriedades computadas. As propriedades computadas precisam ter o seu tipo declarado de forma explícita. As propriedades computadas calculam o valor de forma automática. Propriedades computadas por calcular um valor de forma automática, elas não podem ser definidas como let (constante).

// Propriedade Estática -> Imagine a seguinte situação: temos uma taxa de transferência de 10% para transferir o valor de uma conta para outra. Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.



class Conta {
    var saldo = 0.0     // o atributo saldo é uma propriedade armazenada, pertencendo a uma classe ou struct, e possui algum valor.
    var nome: String    //O atributo nome também é uma propriedade armazenada, dado que está armazenando algum valor.
    
    static var taxaTransferencia = 0.1

    var negativado: Bool {          //propriedade computada
        return saldo < 0
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaNatasha = Conta(nome: "Natasha")
contaNatasha.sacar(20)
print(contaNatasha.negativado)
contaNatasha.depositar(100)
print(contaNatasha.negativado)
print(Conta.taxaTransferencia)
