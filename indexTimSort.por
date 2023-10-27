programa
{
    // Inclui a biblioteca Util e renomeia para 'u'
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat
    inteiro RUN = 32
	

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



	//TIMSORT PARA VETORES COM 1K DE ELEMENTOS
	const inteiro tamanho1 = 1000
	
	funcao timSort1(inteiro vetor[]) {
		
		para(inteiro i=0; i < tamanho1; i += RUN){
			inteiro fim = mat.menor_numero((i + 31), (tamanho1 - 1))
			insert1(vetor)
		}
		para(inteiro size = RUN; size < tamanho1; size = 2 * size){
			para(inteiro ini = 0; ini < tamanho1; ini += 2 * size){
				inteiro meio = ini + size - 1
				inteiro fim = mat.menor_numero((ini + 2 * size - 1), ( tamanho1 - 1))
				mergeSort1(ini, fim, vetor)
			}
		}
	//escreva("PASSOU 2")
	}
	
	funcao mergeSort1(inteiro ini, inteiro fim, inteiro vetor[]) {
		inteiro meio, i, j, k, aux[tamanho1]
		se(ini < fim) {
			meio = (ini + fim) / 2
			mergeSort1(ini, meio, vetor)
			mergeSort1(meio + 1, fim, vetor)
		
			i = ini
			j = meio + 1
			k = ini
		
			enquanto (i <= meio e j <= fim) {
	        		se(vetor[i] < vetor[j]){
	          		aux[k] = vetor[i]
	          		i++
	          		k++
	        		} senao {
	          		aux[k] = vetor[j]
	          		j++
	         			 k++
	        		}
	      	}
	      	enquanto(i <= meio) {
	       		aux[k] = vetor[i]
	        		i++
	        		k++
	      	}
			    enquanto(j <= fim) {
			      aux[k] = vetor[j]
			        j++
			     k++
			    }
		}
	}
	
	funcao insert1(inteiro vetor[]){
	inteiro i, copia, indice
		para(i=1;i<10;i++){
		copia=vetor[i]
		indice=i
	
		enquanto(indice>0 e vetor[indice-1]>copia){
			vetor[indice]=vetor[indice-1]
			indice--
			}
			vetor[indice]=copia
		}
		
	}



	//TIMSORT PARA VETORES COM 2.5K DE ELEMENTOS
	const inteiro tamanho2 = 2500
	funcao timSort2(inteiro vetor[]) {
		//escreva("PASSOU 1")
		para(inteiro i=0; i < tamanho2; i += RUN){
			inteiro fim = mat.menor_numero((i + 31), (tamanho2- 1))
			insert2(vetor)
		}
		para(inteiro size = RUN; size < tamanho2; size = 2 * size){
			para(inteiro ini = 0; ini < tamanho2; ini += 2 * size){
				inteiro meio = ini + size - 1
				inteiro fim = mat.menor_numero((ini + 2 * size - 1), ( tamanho2- 1))
				mergeSort2(ini, fim, vetor)
			}
		}
	//escreva("PASSOU 2")
	}
	
	funcao mergeSort2(inteiro ini, inteiro fim, inteiro vetor[]) {
		inteiro meio, i, j, k, aux[tamanho2]
		se(ini < fim) {
			meio = (ini + fim) / 2
			mergeSort2(ini, meio, vetor)
			mergeSort2(meio + 1, fim, vetor)
		
			i = ini
			j = meio + 1
			k = ini
		
			enquanto (i <= meio e j <= fim) {
	        		se(vetor[i] < vetor[j]){
	          		aux[k] = vetor[i]
	          		i++
	          		k++
	        		} senao {
	          		aux[k] = vetor[j]
	          		j++
	         			 k++
	        		}
	      	}
	      	enquanto(i <= meio) {
	       		aux[k] = vetor[i]
	        		i++
	        		k++
	      	}
			    enquanto(j <= fim) {
			      aux[k] = vetor[j]
			        j++
			     k++
			    }
		}
	}
	
	funcao insert2(inteiro vetor[]){
	inteiro i, copia, indice
		para(i=1;i<10;i++){
		copia=vetor[i]
		indice=i
	
		enquanto(indice>0 e vetor[indice-1]>copia){
			vetor[indice]=vetor[indice-1]
			indice--
			}
			vetor[indice]=copia
		}
		
	}

	

	//TIMSORT PARA VETORES COM 5K DE ELEMENTOS
	const inteiro tamanho3 = 5000
	funcao timSort3(inteiro vetor[]) {
		//escreva("PASSOU 1")
		para(inteiro i=0; i < tamanho3; i += RUN){
			inteiro fim = mat.menor_numero((i + 31), (tamanho3 - 1))
			insert3(vetor)
		}
		para(inteiro size = RUN; size < tamanho3; size = 2 * size){
			para(inteiro ini = 0; ini < tamanho3; ini += 2 * size){
				inteiro meio = ini + size - 1
				inteiro fim = mat.menor_numero((ini + 2 * size - 1), ( tamanho3 - 1))
				mergeSort3(ini, fim, vetor)
			}
		}
	//escreva("PASSOU 2")
	}
	
	funcao mergeSort3(inteiro ini, inteiro fim, inteiro vetor[]) {
		inteiro meio, i, j, k, aux[tamanho3]
		se(ini < fim) {
			meio = (ini + fim) / 2
			mergeSort3(ini, meio, vetor)
			mergeSort3(meio + 1, fim, vetor)
		
			i = ini
			j = meio + 1
			k = ini
		
			enquanto (i <= meio e j <= fim) {
	        		se(vetor[i] < vetor[j]){
	          		aux[k] = vetor[i]
	          		i++
	          		k++
	        		} senao {
	          		aux[k] = vetor[j]
	          		j++
	         			 k++
	        		}
	      	}
	      	enquanto(i <= meio) {
	       		aux[k] = vetor[i]
	        		i++
	        		k++
	      	}
			    enquanto(j <= fim) {
			      aux[k] = vetor[j]
			        j++
			     k++
			    }
		}
	}
	
	funcao insert3(inteiro vetor[]){
	inteiro i, copia, indice
		para(i=1;i<10;i++){
		copia=vetor[i]
		indice=i
	
		enquanto(indice>0 e vetor[indice-1]>copia){
			vetor[indice]=vetor[indice-1]
			indice--
			}
			vetor[indice]=copia
		}
		
	}




    // FUNÇÃO PRINCIPAL
	funcao inicio()
	{
	    // Define três vetores de diferentes tamanhos e os limites
	    inteiro lista1000[1000], lista2500[2500], lista5000[5000]
	    inteiro limites[] = {1000, 2500, 5000}
	    
	    // Loop para iterar sobre os tamanhos dos vetores
	    para(inteiro i = 0; i < 3; i++){
	        // Define o tamanho1 atual
	        inteiro qtnd = limites[i]
	        inteiro inicioTempo = 0, fimTempo = 0
	        inteiro tempo[10]
	        cadeia cenario = "", quantidadeNumeros = "" 
	        
	        // Loop para executar três cenários para cada tamanho1 de vetor
	        para(inteiro k = 1; k <= 3; k++){
	            
	            // Loop para executar o mesmo cenário 10 vezes
	            para(inteiro j = 1; j <= 10; j++){
	                
	                // Seleciona a quantidade de números com base no tamanho1 do vetor
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
	                        timSort1(lista1000)
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
	                        timSort2(lista2500)
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
	                        timSort3(lista5000)
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
 * @POSICAO-CURSOR = 9850; 
 * @DOBRAMENTO-CODIGO = [9, 21, 33, 46, 62, 97, 116, 132, 167, 186, 202, 237];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */