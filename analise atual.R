tabela <- data.frame() 
arquivo <- data.frame(Coleta = c(16, 1, 6, 18, 5, 4, 4, 20), Analise = c(16, 1, 6, 18, 5, 4, 4, 20), Representacao = c(14, 1, 5, 15, 4, 3, 3, 14), Decomposicao = c(14, 1, 6, 15, 5, 4, 4, 16), Abstracao = c(16, 1, 6, 18, 5, 4, 4, 20) , Algoritmo = c(11, 1, 3, 11, 3, 2, 1, 11), Automacao = c(4, 0, 1, 4, 1, 1, 1, 4))

for(coluna in 1:7){
  dados <- arquivo[coluna]
  for(indice in 1:7){
      linha <- c(dados[indice, coluna])
      todos <- c(dados[8, coluna])
      resultado <- (prop.test(linha, todos))
      tabela <- rbind(tabela, data.frame(P-value = resultado[3])) 
  }
}
