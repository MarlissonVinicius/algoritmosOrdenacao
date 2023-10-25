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

	// SUBROTINA QUE ORDENARÁ UM VETOR COM O ALGORITMO BUBBLESORT
    funcao ordenar(inteiro vet[]){
		// Variável para verificar se houve troca de elementos no vetor
		logico houveTroca = falso
		inteiro aux
		
		// Loop para ordenar o vetor (Bubble Sort)
		faca{
			houveTroca = falso  // Assume que não haverá troca
		
			// Obtém o número de elementos no vetor
			inteiro tam = u.numero_elementos(vet)
			
			// Loop para comparar e trocar os elementos no vetor
			para(inteiro j = 0; j < tam-1; j++){
				se(vet[j] > vet[j+1]){
					// Troca os elementos
					aux = vet[j]
					vet[j] = vet[j+1]
					vet[j+1] = aux
					houveTroca = verdadeiro  // Marca que houve uma troca
				}
			}
		}enquanto(houveTroca)  // Continua ordenando até não haver mais trocas
    }

    // FUNÇÃO PRINCIPAL
	funcao inicio()
	{
	    // Define três vetores de diferentes tamanhos e os limites
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
	                        ordenar(lista1000)
	                        fimTempo = u.tempo_decorrido()
	                        
	                        pare
	                    caso 2500:
	                        quantidadeNumeros = "2.5k"
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
	                        ordenar(lista2500)
	                        fimTempo = u.tempo_decorrido()
	                        
	                        pare
	                    caso 5000:
	                        quantidadeNumeros = "5k"
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
	                        ordenar(lista5000)
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
 * @POSICAO-CURSOR = 5953; 
 * @DOBRAMENTO-CODIGO = [6, 18, 30];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tempo, 77, 17, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */