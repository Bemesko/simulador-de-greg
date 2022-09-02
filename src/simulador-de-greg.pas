program simuladorDeGreg;
uses Crt;
// { Disciplina   :  [Linguagem e Lógica de Programação]}
// { Professor   : Antonio Carlos Nicolodi}
// { Descrição   : Aqui você descreve o que o programa faz! (função)}
// { Autor(a)    : Nome do(a) aluno(a)}
// { Data atual  : 05/06/2018}
Var
entrada,resposta, pontos, final:string;
Bmorto,NumeroAleatorio,vidaUsuario, vidaBe, forca, carisma, Gcoin, Ponto: integer;
begin
    // {Bem-vindo}
    Bmorto := 0;
    Ponto:= 0;
    Gcoin:= 0;
    vidaUsuario := 10;
    vidaBe := 10;
    forca:= 2;
    carisma:= 2;
    writeln('Bem-vindo ao simulador de Greg v1.1. Escreva seu nome');
    readln(resposta);
    if(resposta = 'Greg')then begin
        writeln('Olá, Greg! Bem-vindo ao seu simulador. Deseja começar?');
    end else begin
        writeln('Agora seu nome é Greg. Deseja começar?');
    end;
    readln(resposta);
    if(resposta = 's')then begin
    end else begin
        repeat
        writeln('Tem certeza?');
        readln(resposta);
        until(resposta = 'n');
    end;
    // {O começo do jogo}
    writeln('Você chega no Ifsc e encontra Bernardo. O quê deseja fazer?');
    writeln('Comandos: (1)Socar, (2)Falar');
    writeln('(3)pedir dinheiro(em testes), (4)ignora-lo');
    readln(resposta);
    case (resposta) of
        ('1') : 
        begin
            ClrScr;
            vidaBe := vidaBe - forca;
            writeln('Você dá um murro no Bernardo e tira ', forca,' de vida');
            writeln('A batalha começa.');
            repeat
                writeln('');
                writeln('Sua vida: ', vidaUsuario);
                writeln('Comandos: (1)Socar, (2)Falar, (3)pedir dinheiro(em testes)');
                writeln('');
                readln(resposta);
                case(resposta) of
                    ('1'):
                    begin
                        writeln('Você dá um socão no Bernardo');
                        // { escreval("")}
                        // {escreval("Bernardo tenta socar de volta, mas falha miseravelmente")}

                        vidaBe := vidaBe - forca;
                    end;
                    ('2'):
                    begin
                        writeln('Bernardo: AI PAI PARA');
                        if(carisma>= 5)then begin
                            writeln('Você descobre quanto Bernardo tem de vida.');
                            writeln('bernardo tem ',vidaBe,' pontos de vida');
                        end;
                    end;
                end;
            until(vidaBe <= 0);

            if(vidaBe = 0)then begin
                NumeroAleatorio := random(3);
                if(NumeroAleatorio=0)then begin
                    writeln('Você socou tanto o Bernardo que ele ''desmaiou'' e caiu no chão');
                end;
                if(NumeroAleatorio=1)then begin
                    writeln('bernardo tenta fugir do seu soco mas falha e cai duro no chão');
                end;
                if(NumeroAleatorio=2)then begin
                    writeln('bernardo ao levar seu soco, fica tonto, escorrega e cai no chão com força e desmaia');
                end;
                if(NumeroAleatorio=3)then begin
                    writeln('''FATALITY''');
                end;
                ClrScr;
                writeln('Você derrotou o bernardo, +1 ponto');
                writeln('Bernardo está desmaiado no chão, o que você faz? ');
                writeln('(1) Rouba ele.(2) Deixa ele lá');
                Ponto := Ponto + 1;
                Bmorto := Bmorto + 1;
                readln(resposta);
                case(resposta) of
                    ('1'):
                    begin
                        writeln('Você pilha o seu ''oponente'' desmaiado e pega 1 Gcoins');
                        Gcoin := Gcoin + 1;
                    end;
                    ('2'):
                    begin
                        writeln('Voce deixa bernardo no chão');
                        final := 'Impactada';
                    end;
                end;
            end;
        end;
        ('2') : 
        begin
            if(Bmorto<1)then begin
                writeln('Bernardo: E aí, Greg! Como tá a família?');
                writeln('Greg: Vai bem.');
                final := '''Family Friendly''';
            end;
            // {caso("3")}
            // {         se()}
            // {finamescolha}
            writeln ('');
            writeln('Greg continou seu dia normalmente depois disso e foi para casa');

            writeln('para entrar em casa digite entrar');
            readln(entrada);
            // {escreval("Você terminou o dia com ", pontos, " pontos e conseguiu o final ", final, ".")}
            while entrada<>'entrar' do begin
                if(entrada='entrar')then begin
                    ClrScr;
                end;
                if(entrada<>'entrar')then begin
                    writeln('para entrar em casa digite entrar');
                    readln(entrada);
                end;
            end;
            ClrScr;
            writeln('agora você esta em casa.');
            writeln('');
            writeln('em casa, voce pode treinar suas habilidades');
            writeln('');
            writeln('atualmente suas habilidades são:');
            writeln('carisma:',carisma);
            writeln('forca:',forca);
            writeln('');
            writeln('para treinar você gasta um ponto - você tem ',pontos);
            writeln('');
            writeln('o que você deseja treinar');
            writeln('(1)forca (2)carisma (3)estudar (4)descansar (5)nada');
            readln(resposta);
            case(resposta) of
                ('1'):
                begin
                    writeln('Você precisa comprar equipamentos antes de começar');
                end;
                ('2'):
                begin
                    writeln('voce fica conversando consigo mesmo na frente do espelho, os outros acham estranho mas a sua auto-confiança aumenta. +1 Carisma');
                end;
            end;
        end;
    end;
end.