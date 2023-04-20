// EXTENSÕES

/* Extension -> ("estender alguma coisa"), logo, podemos estender um tipo de dado existente que criamos ou não, e implementar novos métodos e funcionalidades dentro dessa extension. Então, logo após definirmos a nossa classe Conta, escrevemos "extension Conta {}".
 A extension serve para estendermos um tipo de dado já existente, pode ser classe ou uma struct. E podemos implementar novos métodos e usar para fins de organização.
 */

class Conta {
    var saldo = 0.0
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

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }

}

var contaNatasha = Conta(nome: "Natasha")
contaNatasha.depositar(200)

var contaAna = Conta(nome: "Ana")
contaNatasha.transferir(contaAna, 50)

print(contaNatasha.saldo)
print(contaAna.saldo)


func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = String ("Natasha")
contaCaracteresString(texto)

extension String {
    func contaCaracteresString() -> Int {
        return self.count       //O self é a instância, é o objeto de fato
    }
}

print(texto.contaCaracteresString())


/* Outro ponto importante, é que extensions não podem conter propriedades armazenadas, apenas computadas e estáticas.

Com isso, se tentarmos declarar uma variável chamada de texto dentro da extension String e rodarmos, note que ele exibe um erro informando que extensions não devem conter propriedades armazenadas. */
