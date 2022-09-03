program simuladorDeGreg;
uses Crt;
// { Descrição   : Simular com precisão como é ser um Greg.}
// { Autor(a)    : Bernardo Pires Mesko, Gregori Sabel e Rafael Guilherme Onesko}
// { Data atual  : 05/06/2018}
Var
    resposta, final: string;
    pula,Chocolate,vida, forca, carisma, Gcoin, varAleatoria: integer;
    ForcaMelhorada,Saco,jaFalou: boolean;


    // {Colocar procedimento de luta}
    procedure luta(vidaAdv, forcaAdv, regenAdv, dinheiro: integer; nomeAdv,falarAdv,falhaAdv, morteAdv: string);
    begin
        Gcoin := Gcoin + 1;
        jaFalou := false;
        ClrScr;
        writeln('A batalha começa com ', nomeAdv);
        repeat // { Adicionar carisma e fazer adversário socar.};
            writeln('Sua vida: ', vida);
            if(jaFalou = true)then begin
                writeln('Vida de ', nomeAdv, ': ', vidaAdv, '. Força de ', nomeAdv, ': ', forcaAdv, ' .' );
            end;
            writeln('Comandos: (1)Falar, (2)Socar');
            writeln('');
            writeln('');
            readln(resposta);
            ClrScr;
            case(resposta) of
                ('2'):
                begin
                    writeln('Você dá um murro em ', nomeAdv, ' e tira ', forca, ' de vida.');
                    vidaAdv := vidaAdv - forca;
                end;
                ('1'):
                begin
                    if((carisma >= 3) and (jaFalou = false))then begin
                        writeln('Você fala com ', nomeAdv, ' e descobre seus atributos.');
                        writeln(nomeAdv, ': ', falarAdv);
                        jaFalou := true;
                    end else begin
                        writeln(nomeAdv, ' não tem nada a dizer');
                    end;

                    writeln(nomeAdv, ' faz uns gestos com as mãos que você não entende e recupera ', forcaAdv, 'ponto(s) de vida');
                    vidaAdv := vidaAdv + regenAdv;
                end;
                ('4'):
                begin
                    writeln(falhaAdv);
                end;
            end;
        until((vidaAdv <= 0) or (vida <= 0));
        if(vidaAdv <= 0)then begin
            ClrScr;
            writeln(morteAdv);
            Gcoin := Gcoin + 2;
            repeat
                writeln(nomeAdv,' está desmaiado(a). O que deseja fazer com ele?');
                writeln('Comandos: (1)Roubar, (2)Ignorar');
                readln(resposta);
                case(resposta) of
                    ('1'):
                    begin
                        writeln('Você rouba ', dinheiro, ' Gcoins de ', nomeAdv ,'e vai embora.');
                    end;
                    ('2'):
                    begin
                        writeln('Você deixa ', nomeAdv, ' estirado no chão e vai embora.');
                    end;
                    else
                    begin
                        ClrScr;
                        writeln('Você fez alguma coisa que o jogo não entendeu.');
                    end;
                end;
            until((resposta = '1') or (resposta = '2'));
        end else begin
            if(vida<=0)then begin
                writeln(nomeAdv, ' te socou tanto que você ''desmaiou''.');
            end;
        end;
    end;

    procedure GregGG(palavraextra:string);   // {funcão loca do greg};
    begin
        ClrScr;
        writeln('');
        writeln('############################################################');
        writeln('###      #####     ###      ####      ##########################');
        writeln('##  ########## ### ### ########  #######################');
        writeln('#  ########### ###  ## #######  ##########Grégori#Sabel########');
        writeln('#  #####    ## #  ####      ##  #####    #Bernardo#P.#Mesko#####');
        writeln('##  ######  ## ## #### #######  #######  #Rafael#Onesko######');
        writeln('###  ####  ### ### ### ########  #####  ##Jorge#lucas#corrêa####');
        writeln('#####    ##### ### ###      #####     ##############');
        writeln('############################################################');
        writeln(palavraextra);
    end;

begin
    // {Colocar valores iniciais aqui}
    Chocolate := 0;
    Saco := false;
    ForcaMelhorada:= false;
    vida := 10;
    forca := 2;
    carisma := 2;
    Gcoin := 0;
    jaFalou := false;
    varAleatoria:= 0;

    // { começo do game na real msm}
    GregGG('teste loko');
    repeat
        writeln('Bem-vindo ao simulador de Greg v1.0');
        writeln('Para instruções, digite ''instrucoes''');
        writeln('Para começar, digite seu nome.');
        writeln('');
        writeln('');
        writeln('');
        writeln('');
        writeln('');
        writeln('');
        writeln('');
        readln(resposta);
        ClrScr;
        if(resposta = 'Greg')then begin
            writeln('Olá, Greg! Bem-vindo ao seu simulador. Deseja começar?');
        end else begin
            if(resposta = 'instrucoes')then begin // {Lembrar de terminar as instruções depois};
                writeln('Instruções');
                writeln('No Simulador de Greg, você joga como Greg, um garoto faceiro que estuda no IFSC.');
                writeln('Você pode fazer o que quiser, mas você terá que pensar em como suas ações afetarão o jogo.');
                writeln('Lembrando que o jogo tem vários finais, preste atenção nos sonhos.');
                writeln('Sempre que o jogo lhe fizer uma pergunta, você poderá responder s (sim), n (não).');
                writeln('Além disso, haverá outros comandos específicos que serão dados para você em cada situação');
                writeln('Mas lembre que todas as suas acoes afetam o futuro do jogo e os personagens lembraram do que você faz');
                writeln('');
                writeln('A sua forca dira quanto de dano você da ao socar');
                writeln('o seu carisma te dara novas possibilidades como:');
                writeln('falar-você se você tiver mais de 3 de carisma você descobre quanto de vida tem seu adverssàrio');
                writeln('pedir dinheiro- para você pedir dinheiro você precisa ter pelo menos 5 de carisma');
                writeln('Agora você esta pronto para esta aventura');
                writeln('');
            end else begin
                writeln('Agora seu nome é Greg. Deseja realmente começar?');
            end;
        end;
    until(resposta <> 'instrucoes');
    readln(resposta); // {Isso vê se você tem certeza que quer jogar (você tem)};
    case(resposta) of
        ('s') : 
        begin
        end;
        ('n') : 
        begin
            repeat
                writeln('Tem certeza?');
                readln(resposta);
            until(resposta = 'n');
        end;
        else
        begin
            writeln('Você escreveu um comando que o jogo não entendeu, então nós assumimos que você quis dizer não');
            repeat
            writeln('Tem certeza?');
            readln(resposta);
            until(resposta = 'n');
        end;
    end;
    ClrScr; // {O começo do jogo};
    repeat
        writeln('Você chega no Ifsc e encontra Bernardo. O quê deseja fazer?');
        writeln('Comandos: (1)Falar, (2)Socar, (3)Pedir dinheiro, (4)Ignorar');
        readln(resposta);
        case(resposta) of
            ('2'):
            begin
                luta(8, 1, 1, 1, 'Bernardo', 'AI PAI PARA', 'Bernardo tenta revidar, mas falha miseravelmente', 'Você socou tanto o Bernardo que ele desmaiou');
                final:= 'Fatality';
            end;
            ('1'):
            begin
                Gcoin := Gcoin + 1;
                writeln('Bernardo: E aí, Greg! Como tá a família?');
                writeln('Greg: Vai bem.');
                final := 'Family Friendly';
            end;
            ('3'):
            begin
                writeln('Bernardo: Por quê que eu ia fazer isso, cara?');
                writeln('(Você precisa ter mais de 5 pontos de carisma para pedir dinheiro)');
                final:= 'Meskinho';
            end;
            ('4'):
            begin
                writeln('Você ignora o Bernardo.');
                final := 'Não interessa pra você, Palhaço!';
            end;
            else
            begin
                writeln('Você escreveu um comando que o jogo não entendeu.');
            end;
        end;
    until((resposta = '1') or(resposta = '2')or(resposta = '3')or (resposta = '4'));
    writeln('');
    writeln('Greg continou seu dia normalmente depois disso.');
    writeln('Você terminou o dia com ', Gcoin, ' Gcoins e recebeu o final ''', final, '''.');
    writeln('Greg continou seu dia normalmente depois disso.');
    writeln('Ir para casa?');
    writeln('');
    writeln('');
    readln(resposta);
    if(resposta='s')then begin
        ClrScr;
    end;
    Gcoin := Gcoin + 1;

    ForcaMelhorada:= false;

    if(Gcoin >= 0)then begin    // {treino paulera};
        repeat
        ClrScr;
        if(ForcaMelhorada = true)then begin
            writeln('Para treinar força você precisa comprar um saco de pancadas na loja do JooJ');
        end;

        writeln('Agora você está em casa.');
        writeln('Em casa, você pode treinar suas habilidades.');
        writeln('');
        writeln('Atualmente suas habilidades são: ');
        writeln('Carisma: ',carisma,';');
        writeln('Força: ',forca,';');
        writeln('');
        writeln('Para treinar você gasta um Gcoin - você tem ',Gcoin, ' Gcoin(s).');
        writeln('');
        writeln('O que você deseja treinar?');
        writeln('(1)Força (2)Carisma (3)Nada');
        writeln('');
        readln(resposta);
        case(resposta) of
            ('1'):
            begin
                if(saco = true)then begin
                    pula := pula + 1;
                    forca := forca + 1;
                    Gcoin := Gcoin - 1;
                    writeln('Você fica esmurrando seu saco de pancadas freneticamente e no final do dia você fica com ', forca, ' pontos de força.');
                end else begin
                    if(saco=false)then begin
                        ClrScr;
                        ForcaMelhorada := true;
                        writeln('Para treinar força você precisa comprar um saco de pancadas na loja do JooJ');
                    end;
                end;
            end;
            ('2'):
            begin
                pula := pula + 1;
                carisma := carisma + 1;
                Gcoin := Gcoin - 1;
                writeln('Você fica conversando sozinho na frente do espelho. Sua mãe acha estranho, mas sua auto-confiança aumenta. Agora seu carisma é ', carisma);
            end;
            ('3'):
            begin
                writeln('Você escolheu não treinar mais nada e ficou jogando Flappy Bird até de tarde.');
                writeln('Agora seus atributos são: ', forca, ' de força; ', carisma, ' de carisma.');
            end;
        end;
    until((resposta = '3') or (Gcoin <= 0));

    end else begin
        writeln('Parece que você não tem nenhum Gcoin e não vai poder melhorar seus atributos.');
    end;


    if(pula > 1)then begin
        ClrScr;
    end;

    writeln('Depois do árduo treino, você ficou cansado. Que tal ir para a cama?');
    writeln('');
    writeln('');
    writeln('');
    writeln('');
    readln(resposta);
    if(resposta = 's')then begin
        ClrScr;
        writeln('Greg foi dormir.');
        case(final) of
            ('Family Friendly'):
            begin
                writeln('você sonha que o Bernardo foi adotado pela sua familia') // {Lembrar de colocar o sonho};
            end;
            ('Fatality'):
            begin
                writeln('Greg teve um pesadelo no qual Bernardo tinha sua vingança.');
            end;
            ('Caridade e Solidariedade'):
            begin
                writeln('');
            end;
            ('Meskinho'):
            begin
                writeln('Greg sonhou que era rico e não dividiu seu dinheiro com Bernardo.');
            end;
            ('Não interessa pra você, Palhaço!'):
            begin
                writeln('Greg sonhou que era invisível e ninguém percebia sua presença.');
            end;
        end;
    end;
    writeln('voce dormiu bem,e acordou disposto');
    writeln('');
    writeln('Agora que tal ir para a escola');
    writeln('De um enter para continuar');
    readln(resposta);

    ClrScr;                                        // {LOJA  JOOJ COMEA AQUI N SE ATREVA A MEXER};
    writeln('No caminho para a escola você passa por sua loja favorita, a ''JooJ''s store''');
    writeln('');
    writeln('Que tal entrar para dar uma olhada?');
    repeat
        writeln('Digite: ''entrar'' para entrar na loja ou ''ir'' para ir direto para a escola.');
        writeln('');
        writeln('');
        readln(resposta);
        if(resposta = 'entrar')then begin
            repeat
                ClrScr;
                writeln('Atendente: Olá, posso ajudar?');
                writeln('Greg: O quê você tem aqui para vender?');
                writeln('Atendente: Temos coisas bem variadas...');
                writeln('Temos uma barra de chocolate branco (1), que custa 1 Gcoin, e um saco de pancada (2)custa 2 Gcoins');
                writeln('Para sair da loja digite ''sair''');
                writeln('Você tem ',Gcoin,' Gcoins');
                readln(resposta);
                case(resposta) of
                    ('1'):
                    begin
                        Gcoin := Gcoin - 1;
                        chocolate := chocolate + 1;
                        writeln('Olha só!! Agora você tem um chocolate branco');
                    end;
                    ('2'):
                    begin
                        Gcoin := Gcoin - 2;
                        Saco := true;
                        writeln('Olha só!! Agora você tem um saco de pancadas');
                        writeln('Agora você pode treinar força.');
                    end;
                end;
            until((resposta = 'sair') or (Gcoin <= 0));
            resposta := 'ir';
        end else begin
            if(resposta = 'ir')then begin
            end else begin
                writeln('O jogo não entendeu o que você quis dizer.');
            end;
        end;
    until((resposta = 'entrar') or (resposta = 'ir'));
    ClrScr;
    writeln('Você foi pra escola');
    writeln('Depois de 15 minutos de ônibus, você chega na escola');
    writeln('Agora você precisa passar pela tia da entrada');
    writeln('Onde é necessário mostrar sua identificação');
    writeln('');
    writeln('Você pega sua identifi... Opa, onde esta seu cartão?');
    writeln('Pera, não esta com você?');
    writeln('...');
    writeln('Onde pode estar?');
    writeln('Você deve ter perdido ele na escola ontem');
    writeln('...');
    writeln('E agora?');
    writeln('Você precisa dar um jeito de entrar na escola. Mas como?');
    writeln('');
    writeln('De um enter para continuar...');
    writeln('');
    readln(resposta);

end.