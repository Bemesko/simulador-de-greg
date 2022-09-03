Algoritmo "Simulador de Greg V1.3"
// Descrição   : Simular com precisão como é ser um Greg.
// Autor(a)    : Bernardo Pires Mesko, Gregori Sabel e Rafael Guilherme Onesko
// Data atual  : 05/06/2018
Var
   resposta, final: caractere
   pula,Chocolate,vida, forca, carisma, Gcoin, varAleatoria: inteiro
   ForcaMelhorada,Saco,jaFalou: logico
Inicio
   //Colocar valores iniciais aqui
   Chocolate <- 0
   Saco <- falso
   ForcaMelhorada<- falso
   vida <- 10
   forca <- 2
   carisma <- 2
   Gcoin <- 0
   jaFalou <- falso
   varAleatoria<- 0

   //Colocar procedimento de luta
procedimento luta(vidaAdv, forcaAdv, regenAdv, dinheiro: inteiro; nomeAdv,falarAdv,falhaAdv, morteAdv: caractere)
inicio
   Gcoin <- Gcoin + 1
   jaFalou <- falso
   limpatela
   escreval("A batalha começa com ", nomeAdv)
   repita// Adicionar carisma e fazer adversário socar.
      escreval("Sua vida: ", vida)
      se(jaFalou = verdadeiro)entao
         escreval("Vida de ", nomeAdv, ": ", vidaAdv, ". Força de ", nomeAdv, ": ", forcaAdv, " ." )
      fimse
      escreval("Comandos: (1)Falar, (2)Socar")
      escreval("")
      escreval("")
      leia(resposta)
      limpatela
      escolha(resposta)
      caso("2")
         escreval("Você dá um murro em ", nomeAdv, " e tira ", forca, " de vida.")
         vidaAdv <- vidaAdv - forca
      caso("1")
         se((carisma >= 3) e (jaFalou = falso))entao
            escreval("Você fala com ", nomeAdv, " e descobre seus atributos.")
            escreval(nomeAdv, ": ", falarAdv)
            jaFalou <- verdadeiro
         senao
            escreval(nomeAdv, " não tem nada a dizer")
         fimse

         escreval(nomeAdv, " faz uns gestos com as mãos que você não entende e recupera ", forcaAdv, " ponto(s) de vida")
         vidaAdv <- vidaAdv + regenAdv
      caso(4)
         escreval(falhaAdv)
      fimescolha
   ate((vidaAdv <= 0) ou (vida <= 0))
   se(vidaAdv <= 0)entao
      limpatela
      escreval(morteAdv)
      Gcoin <- Gcoin + 2
      repita
         escreval(nomeAdv," está desmaiado(a). O que deseja fazer com ele?")
         escreval("Comandos: (1)Roubar, (2)Ignorar")
         leia(resposta)
         escolha(resposta)
         caso("1")
            escreval("Você rouba ", dinheiro, " Gcoins de ", nomeAdv ,"e vai embora.")
         caso("2")
            escreval("Você deixa ", nomeAdv, " estirado no chão e vai embora.")
         outrocaso
            limpatela
            escreval("Você fez alguma coisa que o jogo não entendeu.")
         fimescolha
      ate((resposta = "1") ou (resposta = "2"))
   senao
      se(vida<=0)entao
         escreval(nomeAdv, " te socou tanto que você 'desmaiou'.")
      fimse
   fimse
fimprocedimento

procedimento GregGG(palavraextra:caractere)  //funcão loca do greg
inicio
   limpatela
   escreval("")
   escreval("############################################################")
   escreval("###      #####     ###      ####      ##########################")
   escreval("##  ########## ### ### ########  #######################")
   escreval("#  ########### ###  ## #######  ##########Grégori#Sabel########")
   escreval("#  #####    ## #  ####      ##  #####    #Bernardo#P.#Mesko#####")
   escreval("##  ######  ## ## #### #######  #######  #Rafael#Onesko######")
   escreval("###  ####  ### ### ### ########  #####  ##Jorge#lucas#corrêa####")
   escreval("#####    ##### ### ###      #####     ##############")
   escreval("############################################################")
   escreval(palavraextra)
fimprocedimento

// começo do game na real msm
GregGG("teste loko")
repita
   escreval("Bem-vindo ao simulador de Greg v1.0")
   escreval("Para instruções, digite 'instrucoes'")
   escreval("Para começar, digite seu nome.")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   escreval("")
   leia(resposta)
   limpatela
   se(resposta = "Greg")entao
      escreval("Olá, Greg! Bem-vindo ao seu simulador. Deseja começar?")
   senao
      se(resposta = "instrucoes")entao//Lembrar de terminar as instruções depois
         escreval("Instruções")
         escreval("No Simulador de Greg, você joga como Greg, um garoto faceiro que estuda no IFSC.")
         escreval("Você pode fazer o que quiser, mas você terá que pensar em como suas ações afetarão o jogo.")
         escreval("Lembrando que o jogo tem vários finais, preste atenção nos sonhos.")
         escreval("Sempre que o jogo lhe fizer uma pergunta, você poderá responder s (sim), n (não).")
         escreval("Além disso, haverá outros comandos específicos que serão dados para você em cada situação")
         escreval("Mas lembre que todas as suas acoes afetam o futuro do jogo e os personagens lembraram do que você faz")
         escreval("")
         escreval("A sua forca dira quanto de dano você da ao socar")
         escreval("o seu carisma te dara novas possibilidades como:")
         escreval("falar-você se você tiver mais de 3 de carisma você descobre quanto de vida tem seu adverssàrio")
         escreval("pedir dinheiro- para você pedir dinheiro você precisa ter pelo menos 5 de carisma")
         escreval("Agora você esta pronto para esta aventura")
         escreval("")
      senao
         escreval("Agora seu nome é Greg. Deseja realmente começar?")
      fimse
   fimse
ate(resposta <> "instrucoes")
leia(resposta)//Isso vê se você tem certeza que quer jogar (você tem)
escolha(resposta)
caso("s")
caso("n")
   repita
      escreval("Tem certeza?")
      leia(resposta)
   ate(resposta = "n")
outrocaso
   escreval("Você escreveu um comando que o jogo não entendeu, então nós assumimos que você quis dizer não.")
   repita
      escreval("Tem certeza?")
      leia(resposta)
   ate(resposta = "n")
fimescolha
limpatela//O começo do jogo
repita
   escreval("Você chega no Ifsc e encontra Bernardo. O quê deseja fazer?")
   escreval("Comandos: (1)Falar, (2)Socar, (3)Pedir dinheiro, (4)Ignorar")
   leia(resposta)
   escolha(resposta)
   caso("2")
      luta(8, 1, 1, 1, "Bernardo", "AI PAI PARA", "Bernardo tenta revidar, mas falha miseravelmente", "Você socou tanto o Bernardo que ele 'desmaiou'")
      final<- "Fatality"
   caso("1")
      Gcoin <- Gcoin + 1
      escreval("Bernardo: E aí, Greg! Como tá a família?")
      escreval("Greg: Vai bem.")
      final <- "Family Friendly"
   caso("3")
      escreval("Bernardo: Por quê que eu ia fazer isso, cara?")
      escreval("(Você precisa ter mais de 5 pontos de carisma para pedir dinheiro)")
      final<- "Meskinho"
   caso("4")
      escreval("Você ignora o Bernardo.")
      final <- "Não interessa pra você, Palhaço!"
   outrocaso
      escreval("Você escreveu um comando que o jogo não entendeu.")
   fimescolha
ate((resposta = "1") ou(resposta = "2")ou(resposta = "3")ou (resposta = "4"))
escreval("")
escreval("Greg continou seu dia normalmente depois disso.")
escreval("Você terminou o dia com ", Gcoin, " Gcoins e recebeu o final '", final, "'.")
escreval("Greg continou seu dia normalmente depois disso.")
escreval("Ir para casa?")
escreval("")
escreval("")
leia(resposta)
se(resposta="s")entao

   limpatela
fimse
Gcoin <- Gcoin + 1

ForcaMelhorada<- falso

se(Gcoin >= 0)entao   //treino paulera
   repita
      limpatela
      se(ForcaMelhorada = verdadeiro)entao
         escreval("Para treinar força você precisa comprar um saco de pancadas na loja do JooJ")
      fimse

      escreval("Agora você está em casa.")
      escreval("Em casa, você pode treinar suas habilidades.")
      escreval("")
      escreval("Atualmente suas habilidades são: ")
      escreval("Carisma: ",carisma,";")
      escreval("Força: ",forca,";")
      escreval("")
      escreval("Para treinar você gasta um Gcoin - você tem ",Gcoin, " Gcoin(s).")
      escreval("")
      escreval("O que você deseja treinar?")
      escreval("(1)Força (2)Carisma (3)Nada")
      escreval("")
      leia(resposta)
      escolha(resposta)
      caso("1")
         se(saco = verdadeiro)entao
            pula <- pula + 1
            forca <- forca + 1
            Gcoin <- Gcoin - 1
            escreval("Você fica esmurrando seu saco de pancadas freneticamente e no final do dia você fica com ", forca, " pontos de força.")
         senao
            se(saco=falso)entao
               limpatela
               ForcaMelhorada <- verdadeiro
               escreval("Para treinar força você precisa comprar um saco de pancadas na loja do JooJ")
            fimse
         fimse
      caso("2")
         pula <- pula + 1
         carisma <- carisma + 1
         Gcoin <- Gcoin - 1
         escreval("Você fica conversando sozinho na frente do espelho. Sua mãe acha estranho, mas sua auto-confiança aumenta. Agora seu carisma é ", carisma)
      caso("3")
         escreval("Você escolheu não treinar mais nada e ficou jogando Flappy Bird até de tarde.")
         escreval("Agora seus atributos são: ", forca, " de força; ", carisma, " de carisma.")
      fimescolha
   ate((resposta = "3") ou (Gcoin <= 0))

senao
   escreval("Parece que você não tem nenhum Gcoin e não vai poder melhorar seus atributos.")
fimse


se(pula > 1)entao
   limpatela
fimse

escreval("Depois do árduo treino, você ficou cansado. Que tal ir para a cama?")
escreval("")
escreval("")
escreval("")
escreval("")
leia(resposta)
se(resposta = "s")entao
   limpatela
   escreval("Greg foi dormir.")
   escolha(final)
   caso("Family Friendly")
      escreval("você sonha que o Bernardo foi adotado pela sua familia")//Lembrar de colocar o sonho
   caso("Fatality")
      escreval("Greg teve um pesadelo no qual Bernardo tinha sua vingança.")
   caso("Caridade e Solidariedade")
      escreval("")
   caso("Meskinho")
      escreval("Greg sonhou que era rico e não dividiu seu dinheiro com Bernardo.")
   caso("Não interessa pra você, Palhaço!")
      escreval("Greg sonhou que era invisível e ninguém percebia sua presença.")
   fimescolha
fimse
escreval("voce dormiu bem,e acordou disposto")
escreval("")
escreval("Agora que tal ir para a escola")
escreval("De um enter para continuar")
leia(resposta)

limpatela                                       //LOJA  JOOJ COMEA AQUI N SE ATREVA A MEXER
escreval("No caminho para a escola você passa por sua loja favorita, a 'JooJ's store'")
escreval("")
escreval("Que tal entrar para dar uma olhada?")
repita
   escreval("Digite: 'entrar' para entrar na loja ou 'ir' para ir direto para a escola.")
   escreval("")
   escreval("")
   leia(resposta)
   se(resposta = "entrar")entao
      repita
         limpatela
         escreval("Atendente: Olá, posso ajudar?")
         escreval("Greg: O quê você tem aqui para vender?")
         escreval("Atendente: Temos coisas bem variadas...")
         escreval("Temos uma barra de chocolate branco (1), que custa 1 Gcoin, e um saco de pancada(2)custa 2 Gcoins")
         escreval("Para sair da loja digite 'sair'")
         escreval("Você tem ",Gcoin," Gcoins")
         leia(resposta)
         escolha(resposta)
         caso("1")
            Gcoin <- Gcoin - 1
            chocolate <- chocolate + 1
            escreval("Olha só!! Agora você tem um chocolate branco")
         caso("2")
            Gcoin <- Gcoin - 2
            Saco <- verdadeiro
            escreval("Olha só!! Agora você tem um saco de pancadas")
            escreval("Agora você pode treinar força.")
         fimescolha
      ate((resposta = "sair") ou (Gcoin <= 0))
      resposta <- "ir"
   senao
      se(resposta = "ir")entao
      senao
         escreval("O jogo não entendeu o que você quis dizer.")
      fimse
   fimse
ate((resposta = "entrar") ou (resposta = "ir"))
limpatela
escreval("Você foi pra escola")
escreval("Depois de 15 minutos de ônibus, você chega na escola")
escreval("Agora você precisa passar pela tia da entrada")
escreval("Onde é necessário mostrar sua identificação")
escreval("")
escreval("Você pega sua identifi... Opa, onde esta seu cartão?")
escreval("Pera, não esta com você?")
escreval("...")
escreval("Onde pode estar?")
escreval("Você deve ter perdido ele na escola ontem")
escreval("...")
escreval("E agora?")
escreval("Você precisa dar um jeito de entrar na escola. Mas como?")
escreval("")
escreval("De um enter para continuar...")
escreval("")
leia(resposta)

Fimalgoritmo
