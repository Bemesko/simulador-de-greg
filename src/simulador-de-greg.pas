program simuladorDeGreg;
uses Crt;
// { Disciplina   :  [Linguagem e L�gica de Programa��o]}
// { Professor   : Antonio Carlos Nicolodi}
// { Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)}
// { Autor(a)    : Nome do(a) aluno(a)}
// { Data atual  : 05/06/2018}
Var
entrada,resposta, pontos, final:string;
NumeroAleatorio,vidaUsuario, vidaBe, forca, carisma: integer;
begin
// {Bem-vindo}
    vidaUsuario := 10;
    vidaBe := 10;
    forca:= 2;
    carisma:= 2;
    writeln('Bem-vindo ao simulador de Greg v1.0. Escreva seu nome');
    readln(resposta);
    if(resposta = 'Greg')then begin
        writeln('Ol�, Greg! Bem-vindo ao seu simulador. Deseja come�ar?');
    end else begin
        writeln('Agora seu nome � Greg. Deseja come�ar?');
    end;
    readln(resposta);
    if(resposta = 's')then begin
    end else begin
        repeat;
        writeln('Tem certeza?');
        readln(resposta);
        until(resposta = 'n');
    end;
    // {O come�o do jogo}
    writeln('Voc� chega no Ifsc e encontra Bernardo. O qu� deseja fazer?');
    writeln('Comandos: (1)Socar, (2)Falar');
    writeln('(3)pedir dinheiro(em testes), (4)ignora-lo');
    readln(resposta);
    case(resposta) of
    ('1') :
    begin
        ClrScr;
        vidaBe := vidaBe - forca;
        writeln('Voc� d� um murro no Bernardo e tira ', forca,' de vida');
        writeln('A batalha come�a.');
        repeat
            writeln('');
            writeln('Sua vida: ', vidaUsuario);
            writeln('Comandos: (1)Socar, (2)Falar, (3)pedir dinheiro(em testes)');
            writeln('');
            readln(resposta);
            case(resposta) of
            ('1'):
                begin
                writeln('Voc� d� um soc�o no Bernardo');
                // { escreval("")}
                // {escreval("Bernardo tenta socar de volta, mas falha miseravelmente")}
                vidaBe := vidaBe - forca;
                end;
            ('2'):
                begin
                writeln('Bernardo: AI PAI PARA');
                if(carisma>= 5)then begin
                    writeln('Voc� descobre quanto Bernardo tem de vida.');
                    writeln('bernardo tem ',vidaBe,' pontos de vida');
                end;
            end;
        end;
        until vidaBe <= 0;

        if(vidaBe = 0)then begin
            NumeroAleatorio := random(2);
            if(NumeroAleatorio=0)then begin
                writeln('Voc� socou tanto o Bernardo que ele ''desmaiou'' e caiu no ch�o');
            end;
            if(NumeroAleatorio=1)then begin
                writeln('bernardo tenta fugir do seu soco mas falha e cai duro no ch�o');
            end;
            if(NumeroAleatorio=2)then begin
                writeln('bernardo ao levar seu soco, fica tonto, escorrega e cai no ch�o com for�a e desmaia');
            end;

            final := 'Impactada';
        end;
    end;
    ('2'):
    begin
        writeln('Bernardo: E a�, Greg! Como t� a fam�lia?');
        writeln('Greg: Vai bem.');
        final := '''Family Friendly''';
    end;
    end;
    // {caso("3")}
    // {         se()}
    // {finamescolha}
    writeln ('');
    writeln('Greg continou seu dia normalmente depois disso e foi para casa');

    writeln('para entrar em casa digite entrar');
    readln(entrada);
    // {escreval("Voc� terminou o dia com ", pontos, " pontos e conseguiu o final ", final, ".")}
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
    writeln('agora voc� esta em casa.');
    writeln('');
    writeln('em casa, voce pode treinar suas habilidades');
    writeln('');
    writeln('atualmente suas habilidades s�o:');
    writeln('carisma:',carisma);
    writeln('forca:',forca);
    writeln('');
    writeln('para treinar voc� gasta um ponto - voc� tem ',pontos);
    writeln('');
    writeln('o que voc� deseja treinar');
    writeln('(1)forca (2)carisma (3)nada');
end.