// Observadores de propriedade

/*
 Há cenários em que desejamos monitorar alterações de atributos de classes ou structs no nosso código. Por exemplo, supondo um aplicativo real, podemos querer realizar alguma alteração no layout da página quando uma variável for alterada. Isso é possível através dos observadores de propriedades.
 
 No nosso exemplo da classe Conta, podemos obter a informação de quando ela for alterada. Por exemplo, ao usarmos o método sacar o atributo saldo é modificado, e quando usamos o método depositar também. Conseguimos monitorar todas essas variações através dos observadores willSet e didSet.
 
    . willSet: Novo valor
    . didSet: Valor antigo
 */


class Conta {
    var saldo = 0.0 {
        willSet {       //Esse observador será disparado quando um atributo for modificado e ele obterá informações de qual será o novo valor desse atributo.
           print("O saldo está sendo alterrado! O seu novo valor será de \(newValue)")
        }
        
        didSet {        //Esse observador de propriedade didSet irá armazenar o valor antigo do atributo saldo
            print("O saldo está sendo alterado! O seu valor antigo era de \(oldValue)")
        }
    }
    var nome: String
    
    static var taxaTransferencia = 0.1

    var negativado: Bool {
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
contaNatasha.depositar(20)

