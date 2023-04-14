// Diferenças entre structs e classes

struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String

    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }

    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")


// Em seguida, na linha 22 criei a classe ContaCorrenteClass. Nela escrevi o mesmo código que já vimos no vídeo sobre classes. coloquei os atributos, mas agora inicializei o atributo saldo, não inicializei ele dentro do construtor, o que não tem nenhum problema, ele só precisa estar inicializado.

class ContaCorrenteClass {
    var saldo = 0.0
    var nome: String

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

let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)")




// Quando precisamos alterar a struct dentro de uma função, devemos utilizar a palavra-chave mutating. Para classes isso não é necessário.

// Struct já têm um construtor por padrão, que funciona por debaixo dos panos. Não precisamos definir, mas podemos se quisermos fazer algo mais customizado.

// Já nas classes é obrigatório ter um método construtor (init) caso os atributos não estejam todos inicializados.

// Na linha de var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna"), quando definimos um objeto instanciado com o struct, instanciei utilizando var, criando uma variável.

// Mas, pensando bem, não estamos alterando nada específico dessa variável. Estamos alterando métodos internos dessa struct, mas a variável em si não está sendo alterada. Então vamos trocar de var para let, que significa constante.

// Com essa mudança a IDE vai indicar um erro falando que não podemos alterar o atributo de uma struct caso ela seja definida como uma constante.

// Na linha 4, definimos o saldo como uma variável, var saldo. Então, tecnicamente, ele pode sim ser alterado. Mas pelo fato de termos declarado a instância da struct como uma constante, ele já não pode mais ser alterado, nenhum atributo interno dessa struct pode ser alterado. Então precisamos mudar para var novamente!

// Mas o interessante é que com classes isso não acontece. Podemos mudar a var da classe para let

/* Ao executar o código, nada muda, tudo funciona como esperado.
Isso acontece porque classes possuem um tipo chamado de "referência" e structs possuem um tipo de "valor". Essa é a principal diferença entre classes e structs.*/

// Imagine que você esteja editando um documento do GoogleDocs, quando você compartilha esse documento com um amigo e esse amigo entra no documento e começa a editar, essas edições vão aparecer para você, afinal vocês dois estão lá editando o mesmo documento.

// Mas a partir do momento que você cria uma cópia desse documento e seu colega não tem acesso a essa cópia, as alterações não influenciam nada. Afinal seu amigo está editando em um documento e você criou uma cópia desse documento e está editando nela. Não tem ligação nenhuma a partir do momento em que você faz a cópia, certo?

// Então, no caso em que temos uma pessoa editando no mesmo documento que a gente, imagine que isso será o tipo de referência, quando nós dois estamos no mesmo objeto editando as mesmas coisas. Quando criamos uma cópia do documento, essa cópia é do tipo de valor, porque não tem nada a ver um documento com o outro a partir do momento em que você faz essa cópia.

// Entendemos que classes são do tipo referência e structs do tipo valor, mas o que isso implica no nosso código?

// Voltando ao código, vamos para o trecho da struct e agora vamos instanciar um outro objeto. Criaremos uma variável contaCorrenteStruct02 e igualaremos essa instância a contaCorrenteStruct01.

// Nessa contaCorrenteStruct02 também utilizaremos o método depositar(), vamos depositar 50 reais. Vamos inserir também um print() para exibir no console o contaCorrenteStruct02.saldo

/* Vamos executar esse código. Tivemos no console o seguinte retorno:

Saldo da conta corrente struct 01 = 100.0
Saldo da conta corrente struct 02 = 50.0

Saldo da conta corrente struct 01 = 60.0 */

// O fato de igualarmos a contaCorrenteStruct01 na contaCorrenteStruct02 não influencia em nada. Porque a contaCorrenteStruct02 está pegando uma cópia da contaCorrenteStruct01.

// Vejamos qual será o comportamento se fizermos essa mesma modificação no trecho do código da classe.

// Ao executar o código, o saldo da contaCorrenteClasse01 é 160 reais e o saldo da contaCorrenteClasse02 também é 160 reais.

// Na linha 45, depositamos 60 reais na classe 01 e na linha 46, depositamos 100 reais na classe 02. Não faz sentido as duas contas estarem com o mesmo saldo. Mas, na verdade, faz. Porque quando declaramos que a contaCorrenteClasse02 é igual a contaCorrenteClasse01, isso significa que de alguma forma esses objetos estão ligados.

// Falando de uma maneira um pouco mais técnica, ele não recebe uma cópia da contaCorrenteClasse01 igual acontece na struct. Na verdade, ele está apontando para o mesmo objeto, o mesmo endereço de memória do nosso aplicativo.

// O comportamento das structs, em que uma instância não afeta outra, é o mesmo comportamento de dados primitivos da linguagem Swift.

// Inclusive, é importante ressaltar que classes têm funcionalidades extras em relação às structs. Por exemplo, herança.
