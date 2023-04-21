// RAW VALUES -> Os valores que representam cada caso de uma enumeração, são chamados de Raw Values (em português, "valor bruto").


/*enum Mes: Int {
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)*/


/*enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)*/

// Recapitulando: o Raw Value é o valor customizado para cada caso da enumeração.


enum Mes: String {
    case janeiro =  "Janeiro", fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)


enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.10
    case vinteECincoCentavos = 0.25
    case cinquentaCentavos = 0.50
}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)


// Associated Values
enum ResultadoSaque {
    case sucesso (novoValor: Double)
    case falha (erro: String)
}

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) -> ResultadoSaque{
        if valor > saldo {
            return .falha(erro: "O valor é maior do que o seu saldo.")
        } else {
            saldo -= valor
            return .sucesso(novoValor: saldo)
        }
       
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento será efetuado por pix")
        case .boleto: print("O pagamento será efetuado por boleto")
        case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaNatasha = Conta(nome: "Natasha")
contaNatasha.pagamentoCartao(.pix)
contaNatasha.depositar(100)
let resultado = contaNatasha.sacar(20)

switch resultado {
    
case .sucesso(let novoValor):
    print("O saque foi um sucesso e o saldo é de \(novoValor)")
case .falha(let erro):
    print(erro)
}
