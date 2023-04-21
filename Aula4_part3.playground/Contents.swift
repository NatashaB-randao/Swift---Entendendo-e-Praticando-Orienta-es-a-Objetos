// Protocolos -> são um conjunto de regras definidas que devem ser seguidas.

protocol Conta {
    var saldo: Double { get set }   // get set -> a propriedade pode ser lida e alterada
    
    func sacar(_ valor: Double)
    
    func depositar(_ valor: Double)
        
}

class ContaCorrente: Conta {
    var saldo: Double
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init() {
        saldo = 0.0
    }

}


