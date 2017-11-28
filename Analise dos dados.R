#Analise dos dados

#Vetor com todos os links para os arquivos csv.
links <- c("C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Analise de dados.csv", 
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Abstracao.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Algoritmo e procedimentos.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Automacao.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Coleta de dados.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Decomposicao de problemas.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Paralelizacao.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Representacao de dados.csv",
		"C:/Users/Sheilla/Documents/Pesquisa/Dados da pesquisa/Simulacao.csv")

#Laço que lê arquivo por arquivo e armazena em dados
#Obs: dados atualiza seus valores a cada iteração do laço.
#Tabela contém todos os p-value
tabela <- data.frame() 
for(indice in 1:9){
  file = links[indice]
  dados <- read.csv(file, header = TRUE, sep = ",", dec = ".")
  for(numLinha in 1:7){
    linha <- c(dados[numLinha, 2], dados[numLinha, 3], dados[numLinha, 4])
    todos <- c(10, 27, 5)
    resultado <- (prop.test(linha, todos))
    tabela <- rbind(tabela, data.frame(Nome = "p-value", valor = resultado[3])) 
  }
}

#Fazer:
	#arredondar os p-values
	#armazenar em um arquivo csv ou incrementar nos arquivos ja existentes

