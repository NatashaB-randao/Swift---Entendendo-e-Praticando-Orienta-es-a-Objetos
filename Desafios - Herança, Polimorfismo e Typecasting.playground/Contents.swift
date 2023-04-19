// Desafio 1 - Registrando o empregado e gerente

/*
 1. Crie uma classe Empregado que substituirá os seguintes atributos:
    . Nome (string)
    . Salário (Double)
 
 2. Crie uma classe filha de Empregado, a Gerente. Afinal de contas, gerente é um tipo de empregado.
 
 3. Na classe Gerente, adicione como atributo "departamento", que deve ser uma String que diga a qual departamento o gerente pertence. Lembre de usar o super.init() para inicializar os atributos da classe pai.
 */

/*class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
        
    }
}

class Gerente: Empregado  {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}*/



// Desafio 2 - Calculando o salário do vendedor
// Agora, com base no desafio anterior, vamos aprofundar!
/*
 1. Crie uma outra classe filha chamada Vendedor.
 2. Faça um método chamado percentualComissao, que recebe como parâmetro o número de vendas que o vendedor realizou. Essa comissão é adicionada ao salário final. Retorne o valor final que o vendedor irá receber, supondo que cada venda possui um valor de R$50,00
 */

/*class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
        
    }
}

class Gerente: Empregado  {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {
    func percentualComissao(_ numeroVendas: Int) -> Double {
        return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
    }
}*/


// Desafio 3 - Verificando Tipos
// Ainda com base no desafio anterior, vamos verificar os tipos de "Empregado", se a instância é do yipo "Gerente" ou "Vendedor".

class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
        
    }
}

class Gerente: Empregado  {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {
    func percentualComissao(_ numeroVendas: Int) -> Double {
        return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
    }
}

func verificaTipo(_ empregado: Empregado) {
    if let gerente = empregado as? Gerente {
        print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento de \(gerente.departamento).")
    } else if let vendedor = empregado as? Vendedor {
        print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor(a)")
    } else {
        print("O(a) empregado(a) \(empregado.nome) é de um outro tipo.")
    }
}

let gerente = Gerente(nome: "Felipe", salario: 5000, departamento: "T.I")
let vendedor = Vendedor(nome: "Daniel", salario: 2500.0)
verificaTipo(gerente)
verificaTipo(vendedor)
