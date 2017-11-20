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

resultado <- c()

file = links[1]
dados <- read.csv(file, header = TRUE, sep = ",", dec = ".")
graduados <- dados[1,2]
mestres <- dados[1,3]
doutores <- dados[1,4]
todos <- dados[1,5]

resultadoD <-prop.test(doutores, prop.test(mestres, prop.test(graduados, todos, 0.95, correct=F), 0.95, correct=F
][), 0.95)

resultadoD

