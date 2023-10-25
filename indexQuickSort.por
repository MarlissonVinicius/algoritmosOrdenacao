programa
{
    // Inclui a biblioteca Util
    inclua biblioteca Util --> u

    // SUBROTINA PARA GERAR NÚMEROS EM ORDEM CRESCENTE
    funcao gerarNumCres(inteiro &num[], inteiro range)
    {
        // Gera o primeiro número aleatório entre 1 e 50
        num[0] = u.sorteia(1, 50)
        
        para (inteiro i = 1; i < range; i++) {
            // Gera um incremento aleatório e atualiza o próximo número no vetor
            num[i] = num[i-1] + u.sorteia(1, 10)
        }        
    }

    // SUBROTINA PARA GERAR NÚMEROS EM ORDEM DECRESCENTE
    funcao gerarNumDecres(inteiro &num[], inteiro range)
    {
        // Define o primeiro número como 30.000
        num[0] = 30000 
        
        para (inteiro i = 1; i < range; i++) {
            // Gera um decremento aleatório e atualiza o próximo número no vetor
            num[i] = num[i-1] - u.sorteia(1, 10)
        }    
    }

    // SUBROTINA PARA GERAR NÚMEROS SEM ORDEM
    funcao gerarNumDesor(inteiro &num[], inteiro range)
    {
        para (inteiro i = 0; i < range; i++) {
            // Gera números aleatórios no intervalo de -10.000 a 10.000
            num[i] = u.sorteia(-10000, 10000)
        }    
    }

	funcao inteiro particao(inteiro lista[], inteiro ini, inteiro fim)
	{
	    inteiro pivo = lista[fim]  // Escolhe o último elemento como pivô
	    inteiro i = ini
	    inteiro aux
	    
	    // Loop para percorrer o vetor e reorganizar os elementos em relação ao pivô
	    para(inteiro j = ini; j < fim; j++){
	        se(lista[j] <= pivo){
	            aux = lista[j]
	            lista[j] = lista[i]
	            lista[i] = aux
	            i++
	        }
	    }
	    // Troca o pivô para sua posição correta
	    aux = lista[fim]
	    lista[fim] = lista[i]
	    lista[i] = aux
	    
	    retorne i  // Retorna o índice do pivô
	}
	
	funcao quickSort(inteiro lista[], inteiro ini, inteiro fim)
	{
	    // Verifica se há mais de um elemento para ordenar (ini < fim-1)
	    se(ini < fim - 1){
	        inteiro p = particao(lista, ini, fim)  // Obtém o índice do pivô
	        
	        // Chama recursivamente o Quick Sort para as duas subpartições
	        quickSort(lista, ini, p - 1)  // Subpartição esquerda
	        quickSort(lista, p + 1, fim)  // Subpartição direita
	    }
	}

    // FUNÇÃO PRINCIPAL
    funcao inicio()
    {
        // Define os tamanhos dos vetores
        inteiro lista10000[1000], lista25000[2500], lista50000[5000]
        inteiro limites[] = {1000,2500,5000}
        
        // Loop para iterar sobre os tamanhos dos vetores
        para(inteiro i=0; i<3; i++){
            // Define o tamanho atual
            inteiro qtnd = limites[i]
            inteiro inicioTempo=0, fimTempo=0
            inteiro tempo[10]
            cadeia cenario="", quantidadeNumeros="" 
            
            // Loop para executar três cenários para cada tamanho de vetor
            para(inteiro k=1;k<=3;k++){
                
                // Loop para executar o mesmo cenário 10 vezes
                para(inteiro j=1; j<=10; j++){
                    
                    escolha(qtnd){
                        caso 1000:
                            quantidadeNumeros="1k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista10000,1000)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista10000,1000)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista10000,1000)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
                            // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            quickSort(lista10000,0,1000-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 2500:
                            quantidadeNumeros="2.5k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista25000,2500)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista25000,2500)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista25000,2500)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
                            // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            quickSort(lista25000,0,2500-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 5000:
                            quantidadeNumeros="5k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista50000,5000)
                                    cenario="Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista50000,5000)
                                    cenario="Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista50000,5000)
                                    cenario="Ordem Aleatória"
                                    pare
                            }
        				   // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            quickSort(lista50000,0,5000-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare        
                        }
                    // Calcula o tempo total para a iteração atua 
                    inteiro tempoTotal = fimTempo - inicioTempo
                    tempo[j-1] = tempoTotal
                }
                
                // Imprime informações sobre a execução
                escreva("\nQuantidade de números: ",quantidadeNumeros,"\n")
                escreva("Cenário: ",cenario,"\n")
                escreva("Tempo médio: ")

                // Calcula a média dos tempos de execução
                real acumTempo = 0.0 
                para(inteiro tempos=0;tempos<10;tempos++){
                    acumTempo +=tempo[tempos]
                }
                escreva(acumTempo/=10)
                escreva("\n")
            }
            escreva("\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1257; 
 * @DOBRAMENTO-CODIGO = [6, 18, 30];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */