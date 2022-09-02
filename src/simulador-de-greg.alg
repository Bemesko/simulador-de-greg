Algoritmo "Simulador de Greg 1.1"
// Disciplina   :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/06/2018
Var
   entrada,resposta, pontos, final:caractere
   Bmorto,NumeroAleatorio,vidaUsuario, vidaBe, forca, carisma, Gcoin, Ponto: inteiro
Inicio
   //Bem-vindo
      Bmorto <- 0
      Ponto<- 0
      Gcoin<- 0
      vidaUsuario <- 10
      vidaBe <- 10
      forca<- 2
      carisma<- 2
      escreval("Bem-vindo ao simulador de Greg v1.0. Escreva seu nome")
      leia(resposta)
      se(resposta = "Greg")entao
         escreval("Olá, Greg! Bem-vindo ao seu simulador. Deseja começar?")
      senao
         escreval("Agora seu nome é Greg. Deseja começar?")
      fimse
      leia(resposta)
      se(resposta = "s")entao
      senao
         repita
            escreval("Tem certeza?")
            leia(resposta)
         ate(resposta = "n")
      fimse
      //O começo do jogo
      escreval("Você chega no Ifsc e encontra Bernardo. O quê deseja fazer?")
      escreval("Comandos: (1)Socar, (2)Falar")
      escreval("(3)pedir dinheiro(em testes), (4)ignora-lo")
      leia(resposta)
      escolha(resposta)
caso("1")
         limpatela
         vidaBe <- vidaBe - forca
         escreval("Você dá um murro no Bernardo e tira ", forca," de vida")
         escreval("A batalha começa.")
         repita
            escreval("")
            escreval("Sua vida: ", vidaUsuario)
            escreval("Comandos: (1)Socar, (2)Falar, (3)pedir dinheiro(em testes)")
            escreval("")
            leia(resposta)
            escolha(resposta)
            caso("1")
               escreval("Você dá um socão no Bernardo")
              // escreval("")
               //escreval("Bernardo tenta socar de volta, mas falha miseravelmente")

               vidaBe <- vidaBe - forca
               caso("2")
               escreval("Bernardo: AI PAI PARA")
               se(carisma>= 5)entao
                  escreval("Você descobre quanto Bernardo tem de vida.")
                  escreval("bernardo tem ",vidaBe," pontos de vida")
               fimse
            fimescolha
         ate(vidaBe <= 0)
         se(vidaBe = 0)entao
            NumeroAleatorio <- RandI(3);
            se(NumeroAleatorio=0)entao
               escreval("Você socou tanto o Bernardo que ele 'desmaiou' e caiu no chão")
            fimse
            se(NumeroAleatorio=1)entao
               escreval("bernardo tenta fugir do seu soco mas falha e cai duro no chão")
            fimse
            se(NumeroAleatorio=2)entao
               escreval("bernardo ao levar seu soco, fica tonto, escorrega e cai no chão com força e desmaia")
            fimse
            Se(NumeroAleatorio=3)entao
               escreval("'FATALITY'")
               fimse
               limpatela
               escreval("Você derrotou o bernardo, +1 ponto")
                    escreval("Bernardo está desmaiado no chão, o que você faz? ")
                    escreval("(1) Rouba ele.(2) Deixa ele lá")
                    Ponto <- Ponto + 1
                    Bmorto <- Bmorto + 1
             leia(resposta)
      escolha(resposta)
      caso("1")
               escreval("Você pilha o seu 'oponente' desmaiado e pega 1 Gcoins")
               Gcoin <- Gcoin + 1
      caso("2")
               escreval("Voce deixa bernardo no chão)
            final <- "Impactada"
         fimescolha
caso("2")
         se(Bmorto<1)entao
         escreval("Bernardo: E aí, Greg! Como tá a família?")
         escreval("Greg: Vai bem.")
         final <- "'Family Friendly'"
         fimse
         fimescolha
//caso("3")
//         se()
//finamescolha
      escreval ("")
      escreval("Greg continou seu dia normalmente depois disso e foi para casa")

      escreval("para entrar em casa digite entrar")
      leia(entrada)
     //escreval("Você terminou o dia com ", pontos, " pontos e conseguiu o final ", final, ".")
enquanto entrada<>"entrar" faca
     se(entrada="entrar")entao
                              limpatela
     fimse
     se(entrada<>"entrar")entao
                               escreval("para entrar em casa digite entrar")
                               leia(entrada)
     fimse
fimenquanto
          limpatela
          escreval("agora você esta em casa.")
          escreval("")
          escreval("em casa, voce pode treinar suas habilidades")
          escreval("")
          escreval("atualmente suas habilidades são:")
          escreval("carisma:",carisma)
          escreval("forca:",forca)
          escreval("")
          escreval("para treinar você gasta um ponto - você tem ",pontos)
          escreval("")
          escreval("o que você deseja treinar")
          escreval("(1)forca (2)carisma (3)estudar (4)descansar (5)nada")
          leia(resposta)
           escolha(resposta)
          Caso("1")
         escreval("Você precisa comprar equipamentos antes de começar")
  
         caso("2")
         escreval("voce fica conversando consigo mesmo na frente do espelho, os outros acham estranho mas a  sua auto-confiança aumenta. +1 Carisma")
         fimescolha
Fimalgoritmo
