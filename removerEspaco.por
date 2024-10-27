programa
{
	
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia fraseEntrada, fraseSaida = ""
		caracter carac
		
		escreva("Digite sua frase: ")
		leia(fraseEntrada)

		inteiro tamFrase = tx.numero_caracteres(fraseEntrada)

		para (inteiro cont = 0; cont < tamFrase; cont++) 
		{
			carac = tx.obter_caracter(fraseEntrada, cont)
			
			se(carac != ' ') {
	 			fraseSaida += carac
			}
		}

		escreva("A frase original é: ", fraseEntrada, "\n")
		escreva("A frase sem os espaços é: ", fraseSaida)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */