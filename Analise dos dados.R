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
resultado <- c()
for(indice in 1:length(links)){
	file = links[indice]
	dados <- read.csv(file, header = TRUE, sep = ",", dec = ".")
	for(coluna in 2:4){
		for(indVetor in 1: length(dados[,coluna])){
			coluna <- dados[indVetor,coluna]
			todos <- dados[indVetor,5]
			resultado <- prop.test(coluna, todos, 0.95)
		}
	}
}

#Teste básico de análise
col1 <- c(3, 11, 2)
todos<- c(7, 16, 3)
dados <- prop.test(col1, todos, 0.95)
dados


