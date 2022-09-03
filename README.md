# Simulador de Greg

![Greg](https://user-images.githubusercontent.com/55760760/188249307-438f1829-4a5e-417d-9bb1-bb1e3dc407b9.png)

## Como Executar

### Docker

```bash
docker run --rm -it bemesko/simulador-de-greg
```

### Pascal

1. Compile o arquivo src/simulador-de-greg.pas usando o FPC:

```bash
fpc -osimulador-de-greg src/simulador-de-greg.pas
```

2. Execute o arquivo usando:

```bash
src/simulador-de-greg
```

### Portugol

1. Abra o arquivo src/simulador-de-greg.alg no Visualg
2. Só clicar em executar, não tem muito segredo

## Contexto

Eu e uns amigos estávamos recém começando a aprender a programar em 2018 e tentamos
fazer um jogo em portugol. Esse é o resultado.

O jogo foi originalmente programado em portugol com o Visualg. Por fins de preservação,
eu concluí que seria mais interessante converter o código que já existia para Pascal usando
o próprio conversor do Visualg, e compilar um executável a partir disso (até onde pesquisei
não há nenhum jeito de gerar um arquivo executável diretamente de portugol).

### Os amigos

- [Eu (@Bemesko)](https://github.com/Bemesko)
- [@Rafael-Onesko](https://github.com/Rafael-Onesko)
- [@gregori-sabel](https://github.com/gregori-sabel)

Abaixo fica um concept art de um mapa que planejamos pro jogo (mas não está implementado na gameplay)

![Mapa do Jogo](docs/mapa-ifsc.png)
