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
for(indice in 1:length(links)){
	file = links[indice]
	dados <- read.csv(file, header = TRUE, sep = ",", dec = ".")

}

