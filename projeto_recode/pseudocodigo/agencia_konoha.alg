Algoritmo "Konoha_Viagens"

Var
   clientes : vetor[1..25] de caractere
   destinos : vetor[1..15] de caractere

   numero_clientes : inteiro
   numero_destinos : inteiro
   opcao : inteiro

   Procedimento cadastrarCliente(cliente : caractere)
   Var

   Inicio
      se numero_clientes < 20 entao
         numero_clientes <- numero_clientes + 1
         clientes[numero_clientes] <- cliente

         limpatela

         escreval("Cliente cadastrado!")
      senao
         escreval("Limite atingido!")
      fimse
   FimProcedimento

   Procedimento cadastrarDestino(destino : caractere)
   Var

   Inicio
      se numero_destinos < 10 entao
         numero_destinos <- numero_destinos + 1
         destinos[numero_destinos] <- destino

         limpatela

         escreval("Destino cadastrado!")
      senao
         escreval("Limite atingido!")
      fimse
   FimProcedimento

   Procedimento consultarClientes()
   Var
      i : inteiro
   Inicio
          se numero_clientes > 0 entao
            limpatela
            para i de 1 ate numero_clientes faca
               escreval("Cliente ", i, ": ", clientes[i])
            fimpara
          senao
            escreval("Nenhum cliente cadastrado!")
          fimse
   FimProcedimento

   Procedimento consultarDestinos()
   Var
      i : inteiro
   Inicio
      se numero_destinos > 0 entao
         limpatela
         para i de 1 ate numero_destinos faca
            escreval("Destino ", i, ": ", destinos[i])
         fimpara
      senao
         escreval("Nenhum destino cadastrado!")
      fimse
   FimProcedimento

   Procedimento mostrarMenu()
   Var
      nome_cliente : caractere
      nome_destino : caractere
   Inicio
      opcao <- 0

      enquanto opcao <> 5 faca
         escreval("-------------------------")
         escreval("Menu da Ag�ncia de Viagens")
         escreval("-------------------------")
         escreval("1. Cadastrar cliente")
         escreval("2. Cadastrar destino")
         escreval("3. Consultar clientes")
         escreval("4. Consultar destinos")
         escreval("5. Sair")
         escreva("Escolha uma op��o (1-5): ")
         leia(opcao)

         escolha opcao
            caso 1
               escreva("Digite o nome do cliente: ")
               leia(nome_cliente)
               cadastrarCliente(nome_cliente)
            caso 2
               escreva("Digite o nome do destino: ")
               leia(nome_destino)
               cadastrarDestino(nome_destino)
            caso 3
               consultarClientes()
            caso 4
               consultarDestinos()
            caso 5
               escreval("Encerrando o programa...")
            outrocaso
               escreval("Op��o inv�lida! Escolha uma op��o v�lida (1-5).")
         fimescolha
      fimenquanto
   FimProcedimento

Inicio
   numero_clientes <- 0
   numero_destinos <- 0

   mostrarMenu()
Fimalgoritmo
