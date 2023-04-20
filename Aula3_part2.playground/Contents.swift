// Getters e Setters
/*
 As propriedades computadas podem utilizar de getters e setters. Na verdade, quando você escreve uma variável computada, como na maneira abaixo: */

var area: Double {
    return lado * lado
}

// O que você realmente está escrevendo é:
var area: Double {
    get {
        return lado * lado
    }
}

/*
 O get fica implícito na sua variável, mas ele existe e está lá. Já o set é opcional. Basicamente, o get permite que você acesse a propriedade e seu valor que será calculado, enquanto o set permite que você realize algo quando essa propriedade for alterada para um novo valor.
 */
