// ENUMERAÇÕES -> esse tipo de dado perpite que a gente defina casos concretos.
// As enumerações são usadas também com o switch por conseguirmos abordar diferentes casos. Podemos realizar essas enumerações para qualquer tipo de caso.

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
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


enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiro
