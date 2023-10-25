programa
{
    // Inclui a biblioteca Util e renomeia para 'u'
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

	funcao merge_sort1(inteiro vetor[], inteiro ini, inteiro fim)
	{
	    inteiro meio, i, j, k, aux[1000]
	    
	    // Verifica se o intervalo de ordenação é maior que 1
	    se(ini < fim){
	        meio = (ini + fim) / 2
	        
	        // Chamada recursiva para ordenar a metade esquerda
	        merge_sort1(vetor, ini, meio)
	        
	        // Chamada recursiva para ordenar a metade direita
	        merge_sort1(vetor, meio + 1, fim)
	        
	        // Combina as duas metades ordenadas
	        i = ini
	        j = meio + 1
	        k = ini
	        
	        enquanto(i <= meio e j <= fim){
	            se(vetor[i] < vetor[j]){
	                aux[k] = vetor[i]
	                i++
	            }
	            senao{
	                aux[k] = vetor[j]
	                j++
	            }
	            k++
	        }
	        
	        // Verifica se ainda há elementos na metade esquerda
	        enquanto(i <= meio){
	            aux[k] = vetor[i]
	            i++
	            k++
	        }
	        
	        // Verifica se ainda há elementos na metade direita
	        enquanto(j <= fim){
	            aux[k] = vetor[j]
	            j++
	            k++
	        }
	        
	        // Copia os elementos ordenados de volta para o vetor original
	        para(i = ini; i <= fim; i++){
	            vetor[i] = aux[i]
	        }
	    }
	}

	
	//FUNCAO MERGE PARA ORDENAR UM VETOR COM 2.5K DE NÚMEROS 
	funcao merge_sort2(inteiro vetor[], inteiro ini, inteiro fim)
	{
	    inteiro meio, i, j, k, aux[2500]  // Vetor auxiliar com tamanho maior
	    
	    // Verifica se o intervalo de ordenação é maior que 1
	    se(ini < fim){
	        meio = (ini + fim) / 2
	        
	        // Chamada recursiva para ordenar a metade esquerda
	        merge_sort2(vetor, ini, meio)
	        
	        // Chamada recursiva para ordenar a metade direita
	        merge_sort2(vetor, meio + 1, fim)
	        
	        // Combina as duas metades ordenadas
	        i = ini
	        j = meio + 1
	        k = ini
	        
	        enquanto(i <= meio e j <= fim){
	            se(vetor[i] < vetor[j]){
	                aux[k] = vetor[i]
	                i++
	            }
	            senao{
	                aux[k] = vetor[j]
	                j++
	            }
	            k++
	        }
	        
	        // Verifica se ainda há elementos na metade esquerda
	        enquanto(i <= meio){
	            aux[k] = vetor[i]
	            i++
	            k++
	        }
	        
	        // Verifica se ainda há elementos na metade direita
	        enquanto(j <= fim){
	            aux[k] = vetor[j]
	            j++
	            k++
	        }
	        
	        // Copia os elementos ordenados de volta para o vetor original
	        para(i = ini; i <= fim; i++){
	            vetor[i] = aux[i]
	        }
	    }
	}


	//FUNCAO MERGE PARA ORDENAR UM VETOR COM 5K DE NÚMEROS 
	funcao merge_sort3(inteiro vetor[], inteiro ini, inteiro fim)
{
    inteiro meio, i, j, k, aux[5000]  // Vetor auxiliar com tamanho maior (5.000)

    // Verifica se o intervalo de ordenação é maior que 1
    se(ini < fim){
        meio = (ini + fim) / 2

        // Chamada recursiva para ordenar a metade esquerda
        merge_sort3(vetor, ini, meio)

        // Chamada recursiva para ordenar a metade direita
        merge_sort3(vetor, meio + 1, fim)

        // Combina as duas metades ordenadas
        i = ini
        j = meio + 1
        k = ini

        enquanto(i <= meio e j <= fim){
            se(vetor[i] < vetor[j]){
                aux[k] = vetor[i]
                i++
            }
            senao{
                aux[k] = vetor[j]
                j++
            }
            k++
        }

        // Verifica se ainda há elementos na metade esquerda
        enquanto(i <= meio){
            aux[k] = vetor[i]
            i++
            k++
        }

        // Verifica se ainda há elementos na metade direita
        enquanto(j <= fim){
            aux[k] = vetor[j]
            j++
            k++
        }

        // Copia os elementos ordenados de volta para o vetor original
        para(i = ini; i <= fim; i++){
            vetor[i] = aux[i]
        }
    }
}


    // FUNÇÃO PRINCIPAL
    funcao inicio()
    {
        // Define os tamanhos dos vetores e os limites
        inteiro lista1000[1000], lista2500[2500], lista5000[5000]
        inteiro limites[] = {1000, 2500, 5000}
        
        // Loop para iterar sobre os tamanhos dos vetores
        para(inteiro i = 0; i < 3; i++){
            // Define o tamanho atual
            inteiro qtnd = limites[i]
            inteiro inicioTempo = 0, fimTempo = 0
            inteiro tempo[10]
            cadeia cenario = "", quantidadeNumeros = "" 
            
            // Loop para executar três cenários para cada tamanho de vetor
            para(inteiro k = 1; k <= 3; k++){
                
                // Loop para executar o mesmo cenário 10 vezes
                para(inteiro j = 1; j <= 10; j++){
                	
                    // Seleciona a quantidade de números com base no tamanho do vetor
                    escolha(qtnd){
                        caso 1000:
                            quantidadeNumeros = "1k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista1000, 1000)
                                    cenario = "Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista1000, 1000)
                                    cenario = "Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista1000, 1000)
                                    cenario = "Ordem Aleatória"
                                    pare
                            }
                            // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            merge_sort1(lista1000,0,1000-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 2500:
                            quantidadeNumeros = "2.5k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista2500, 2500)
                                    cenario = "Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista2500, 2500)
                                    cenario = "Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista2500, 2500)
                                    cenario = "Ordem Aleatória"
                                    pare
                            }
                            // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            merge_sort2(lista2500,0, 2500-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare
                        caso 5000:
                            quantidadeNumeros = "5k"
                            // Escolhe um cenário entre ordem crescente, decrescente e aleatória
                            escolha(k){
                                caso 1:
                                    gerarNumCres(lista5000, 5000)
                                    cenario = "Ordem Crescente"
                                    pare
                                caso 2:
                                    gerarNumDecres(lista5000, 5000)
                                    cenario = "Ordem Decrescente"
                                    pare
                                caso 3:
                                    gerarNumDesor(lista5000, 5000)
                                    cenario = "Ordem Aleatória"
                                    pare
                            }
        				   // Mede o tempo antes e depois da ordenação
                            inicioTempo = u.tempo_decorrido()
                            merge_sort3(lista5000,0, 5000-1)
                            fimTempo = u.tempo_decorrido()
                            
                            pare        
                        }
                    // Calcula o tempo total para a iteração atual
                    inteiro tempoTotal = fimTempo - inicioTempo
                    
                    tempo[j-1] = tempoTotal
                }
                // Imprime informações sobre a execução
                escreva("\nQuantidade de números: ", quantidadeNumeros, "\n")
                escreva("Cenário: ", cenario, "\n")
                escreva("Tempo médio: ")

                // Calcula a média dos tempos de execução
                real acumTempo = 0.0 
                para(inteiro tempos = 0; tempos < 10; tempos++){
                    acumTempo += tempo[tempos]
                }
                escreva(acumTempo /= 10)
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
 * @POSICAO-CURSOR = 2607; 
 * @DOBRAMENTO-CODIGO = [6, 18, 30, 38, 92];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */