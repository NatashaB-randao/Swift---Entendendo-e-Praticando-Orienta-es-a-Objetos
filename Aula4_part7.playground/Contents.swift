// Para saber mais: opcionais funcionam com o uso de enumerações

/*
 Agora que você já entendeu sobre enumerações, sabia que as opcionais funcionam com o uso de enumerações?
 Isso acontece porque quando utilizamos opcionais temos dois cenários possíveis:

  .Caso haja algum valor;
  .Caso não haja algum valor (nesse caso, a opcional será nil).
 
 Quem controla esses casos são as enumerações. Veja o código abaixo:
 */

var valor: Int?
valor = 5

switch valor {
case .none: print("A opcional não possui nenhum valor.")
case .some(let valor): print("O valor da opcional é \(valor)")
}

// Portanto, é utilizado de enumeração e valores associados para lidar com opcionais. Interessante, não?
