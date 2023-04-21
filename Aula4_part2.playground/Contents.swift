// Para saber mais: diferença entre Self e self

/*No vídeo de extensões, você viu que self refere-se à instância de um tipo de dado customizado, como classe ou struct.
 
 Mas você sabia que, na linguagem Swift, a palavra Self, com ‘S’ maiúsculo, também é utilizada? Vamos analisar a diferença entre elas. Veja o exemplo a seguir, utilizando extension, no primeiro código: */

 /*extension Int {
     func somaNumeroCom(_ numero: Self) -> Self {
         return numero + self
     }
 }

 let numero = 10
 let resultadoSoma = numero.somaNumeroCom(20)
 print(resultadoSoma) // Será exibido no console o valor 30 */

/*
 Estamos criando uma extensão do tipo de dado Int, previamente definido pela linguagem Swift, e adicionando um método chamado somaNumeroCom, que soma a instância dessa struct Int com algum outro valor que passamos por parâmetro. Por fim, retornamos um objeto do tipo Self, já vamos entender o que isso significa!
 Você poderia escrever o mesmo código da seguinte maneira; veja o segundo código:
 */

extension Int {
    func somaNumeroCom(_ numero: Int) -> Int {
        return numero + self
    }
}

let numeroDez = 10
let resultadoSoma = numeroDez.somaNumeroCom(20)
print(resultadoSoma) // Será exibido no console o valor 30
 


/*
 No primeiro códigosomaNumeroCom, temos os dois: o Self com “s” maiúsculo e o self com minúsculo. Ou seja, o Self está presente no tipo de dado do parâmetro recebido na função e também no retorno da função; ou seja, o Self se refere ao dado de tipo Int.
 
 No segundo código, colocamos o Int no lugar de Self, e então temos só a palavra-chave self em caixa baixa. Isso porque, na linguagem Swift, essa palavra-chave self é usada para se referir a uma instância específica do tipo de dado, enquanto o tipo Self se refere ao tipo de dado atual, como classes, structs, etc.
 
 Portanto, no exemplo dado, Self é Int, enquanto self é a instância, ou seja, a variável numeroDez com o valor 10.
 */
