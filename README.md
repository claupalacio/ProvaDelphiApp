## ProvaDelphiApp

Projeto realizado durante seleção da Softplan, com objetivo de atender as tarefas da prova versão França.

## Ambiente

O projeto foi desenvolvido somente com componentes nativos da IDE versão Rio, com exceção dos criados sob demanda para atender os requisitos de uma das tarefas.

## Estrutura

Trata-se de uma aplicação VCL chamada “ProvaDelphiApp” com um formulário principal e um menu chamado “Tarefas” contendo um item de menu para cada questão: “Tarefa 1”, “Tarefa 2” e “Tarefa 3”. Todos os formulários implementados na prova possuem o tipo MDICHILD, e foram criados dinamicamente pelo formulário do menu principal e destruídos no evento FormClose dos mesmos.

## Tarefa 1

O objetivo é validar as habilidades do candidato com relação a componentes. Para isso foram criados dois, um RUNTIME e um DESIGNTIME, o primeiro para gerar um comando SQL a partir de três variáveis que deverão aparecer como propriedades da classe: spCondicoes, spColunas e spTabelas, todas do tipo TStringList. A segunda para  registrar o componente TspQuery na paleta de componentes “spComponentes” do Delphi.

Para testar o componente, foi criado um formulário onde permite que o usuário insirira as tabelas, condições e colunas, e após gerar, também, visualizar o SQL gerado. O nome do arquivo do formulário foi “ufTarefa1.pas” e o nome do form “fTarefa1”. Ao clicar no item de menu “Tarefa 1” do menu principal da aplicação, abrir o formulário “fTarefa1”.

## Tarefa 2

O objetivo é demonstrar o domínio em programação com Threads no Delphi. 

Para isso foi criado um formulário com o nome da unit “ufTarefa2.pas” e nome do form “fTarefa2” onde o usuário poderá pressionar um botão que criará e executará duas threads. Estas threads irão realizar um laço de 0 até 100, onde a cada iteração do laço elas deverão aguardar um tempo em milisegundos determinado pelo usuário. 

A cada iteração do laço, a thread deverá exibir o valor do contador de iterações do loop numa barra de progresso no formulário. Como serão duas threads rodando, o formulário deverá exibir duas barras de progresso. 

O usuário pode configurar para cada thread um tempo em milisegundos que a mesma aguardará a cada iteração do loop. 

Foi utilizado o procedimento Sleep (pnMilisegundos: integer) para fazer a espera entre cada iteração do loop das threads. Ao clicar no item de menu “Tarefa 2” do menu principal da aplicação, abrir o formulário “fTarefa2”.

## Tarefa 3

Como objetivo para demonstrar domínio de operações em lote, foi criado um formulário com o nome da unit “ufTarefa3.pas” e nome do form “fTarefa3”, onde será possível visualizar valores de projetos. 

O formulário contém:  

  - Uma grid com as colunas “idProjeto”, “NomeProjeto” e “Valor”;
  - Um edit “Total R$” para mostrar a soma total da coluna “valor” da grid;  
  - Um botão “Obter total” para somar os valores da coluna “valor” da grid e atribuir para o edit “Total R$”. Utilize um laço para fazer a soma; 

  - Uma grid com as colunas “idProjeto”, “NomeProjeto” e “Valor”;
  - Um botão “Obter Total Divisões” para somar o total das divisões do registro seguinte pelo registro anterior e atribuir no edit “Total divisões R$”. Ex: 
      - Projeto 1 = 10,00 | Projeto 2 = 20,00 | Projeto3 = 30,00
      - (20 / 10) = 2
      - (30 / 20) = 1,5
      -  Total a ser exibido em “Total divisões R$” = 3,5 (2+1,5)

Os componentes de dados que serão ligados na grid (clienteDataSet, dataSource), criados e destruídos em tempo de execução. 

Ao abrir a tela, são populados 10 registros dinamicamente de forma aleatória na grid com todas as colunas preenchidas. Para isso foi utilizado um laço para popular os registros. 

Ao clicar no item de menu “Tarefa 3” do menu principal da aplicação, abrir o formulário “fTarefa3”.

## Testes Unitários

Como objetivo de demonstrar conhecimento em testes unitários, foi implementado o projeto de teste unitário e o teste unitário da classe uSoftThread_Controller