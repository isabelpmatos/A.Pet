# ADot Pet - Adoção de Animais

**Isabel Pinheiro Matos**

**Felipe Caldas Liduario**

**Julia Reis**

---

Professor:

**Ilo Rivero **

---

_Curso de Engenharia de Software, Unidade Praça da Liberdade_

_Instituto de Informática e Ciências Exatas – Pontifícia Universidade de Minas Gerais (PUC MINAS), Belo Horizonte – MG – Brasil_

---

**Resumo**.

Nosso grupo tem como objetivo neste projeto desenvolver uma mobile para auxiliar na divulgação de animais disponiveis para adoção. Nesse contexto temos dois publicos alvos:

1. Pessoas que desejam anunciar um pet para adoção.
2. Pessoas que desejam adotar um pet.

Na nossa aplicação, os usuários poderão cadastrar os pets, como também demonstrar interesse em algum animal anunciado por outro usuario.

Ao longo do projeto vamos colocar em prática o que estamos aprendendo ao longo do curso e na nossa carreira profissional: tecnologias de programação, metodologias ágeis, gerenciamento de projetos de software, etc.

---

## SUMÁRIO

1. [Apresentação](#apresentacao "Apresentação") <br />
   1.1. Problema <br />
   1.2. Objetivos do trabalho <br />
   1.3. Definições e Abreviaturas <br />

2. [Requisitos](#requisitos "Requisitos") <br />
   2.1. Requisitos Funcionais <br />
   2.2. Requisitos Não-Funcionais <br />
   2.3. Restrições Arquiteturais <br />
   2.4. Linguagens utilizadas <br />

3. [Modelagem](#modelagem "Negócio") <br />
   3.1. Visão de Negócio <br />

<a name="apresentacao"></a>

# 1. Apresentação

A ideia principal deste projeto surgiu no contexto da adoção de animais por pessoas que desejam possuir um animal de estimação.  A União Internacional Protetora dos Animais (UIPA), apresentou uma pesquisa em que a procura por adoção de animais aumentou 400% durante o primeiro trimestre de 2020 e 

em um outro levantamento feito pelo Radar Pet 2021, foi observado que, 30% dos animais de estimação foram adotados durante o período pandêmico, sendo 23% foram os primeiros bichinhos de seus donos.

O Software que queremos desenvolver, além de ser um facilitador para pessoas encontrarem animais para adoção, tem como um dos principais objetivos incentivar a adoção de animais que muitas vezes não possuem um lar para morar.

## 1.1. Problema

Dentro do contexto citado acima, nos deparamos com alguns problemas:

1. Pessoas as vezes sem condições de comprar um animal.
2. Pessoas que não conhecem outras nas quais estejam querendo anunciar um pet para adoção.
3. Dificuldade em encontrar locais para adotar animais.

## 1.2. Objetivos do trabalho

Nosso propósito é disponibilizar uma plataforma para facilitar a integração de pessoas amantes de pet que querem adotar um animal e incentivar essa prática.

Queremos unir dois grupos de pessoas. As que já possuem a vontade de adotar animais com aquelas que possuem a vontade de doar um animal ou encontrar um lar para algum animal que achou na rua por exemplo.

## 1.3. Definições e Abreviaturas

Pet: Palavra da língua inglesa cada vez mais popular no vocabulário brasileiro para se referir aos animais de estimação.
ID: identificador de requisitos

<a name="requisitos"></a>

# 2. Requisitos

## 2.1. Requisitos Funcionais

Lista de requisitos funcionais previstos para a aplicação, cada requisito possui um identificador (ID) e estão enumerados por ordem de prioridade._

| **ID** | **Descrição**                                                                                                   | **Prioridade** |
| ------ | --------------------------------------------------------------------------------------------------------------- | -------------- |
| RF001  | O sistema deve permitir o Cadastro e login de usuários                                                          | Essencial      |
| RF002  | O sistema deve permitir que um usuário anuncie um pet                                                           | Essencial      |
| RF003  | O sistema deve permitir que um usuário favorite um pet                                                          | Essencial      |
| RF004  | O sistema deve permitir que um usuario visualize seus pets favoritados                                          | Essencial      |
| RF005  | O sistema deve permitir que somente o administrador de um pet editem e excluam o cadastro deste                 | Essencial      |
| RF006  | O sistema deve permitir que usuários visualizem as informações dos animais                                      | Essencial      |

## 2.2. Requisitos Não-Funcionais

| **ID** | **Descrição**                                                                                                                         
| ------ | ------------------------------------------------------------------------------------------------------------------------------------- 
| RNF001 | O sistema deve ter um Design responsivo nas interfaces gráficas                                                                       
| RNF002 | O sistema deve ter compatibilidade com sistemas operacionais Android e IOS                                                            
| RNF003 | O sistema deve prover serviços no ambiente móvel.                                                                               
| RNF004 | Os dados pessoais do usuario devem estar criptografados                                                                               
| RNF005 | As senhas de acesso dos usuarios devem ser criptografadas                                                                             
| RNF006 | O sistema deve ter um design que facilite a utilização de suas funcionalidades                                                        
| RNF007 | Para acessar o aplicativo o usuario deve estar logado no sistema                                                                      
| RNF008 | As buscas que serão realizadas não poderao exceder o tempo de resposta de 15 segundos                                                 
| RNF009 | O sistema deve permitir que múltiplos clientes se conectem a um único servidor e realizem operações de forma concorrente              

## 2.3. Restrições Arquiteturais

As restrições impostas ao projeto que afetam sua arquitetura são :

- O sistema deve utilizar um modelo baseado em Web Service.
- O sistema deve prover serviços no ambiente móvel.
- O sistema deve possuir uma implementação do front-end em tecnologias móveis.
- O sistema deve permitir que múltiplos clientes se conectem a um único servidor e realizem operações de forma concorrente.
- O sistema deve tratar erros de cliente e de servidor corretamente. Por exemplo: falhas de comunicação, servidor indisponível, timeouts etc. Mostre como esses erros são tratados com estratégias tais como reenvio de mensagens.

## 2.3. Linguagens Utilizadas

Como linguagens para esse projeto utilizamos o flutter para o desenvolvimento mobile, o backend foi feito em nodeJS e o banco de dados no Firebase.

#3. Modelagem

## 3.1. Visão de Negócio (Funcionalidades)

1. O sistema deve permitir o cadastro e login de usuários.
2. O sistema deve permitir que um usuário crie e controle seus pets.
3. O sistema deve permitir que um usuário favorite um pet.
4. O sistema deve permitir que um usuário visualize seus pets favoritados.
5. O sistema deve permitir que um usuário qualquer visualize as informações de um pet.

### Histórias de Usuário

_Uma história do usuário é uma explicação informal e geral sobre um recurso de software escrito a partir da perspectiva do usuário final, para expressar sua perspectiva. Foram descritas onde cada história possui sua prioridade entre 0 a 5, onde 5 seja menos prioritário. Além disso, as histórias contam com a descrição que corresponde o ponto de vista do usuário em si, o fluxo principal que representa a release que engloba várias histórias semelhantes. As histórias estão ordenadas por prioridade dos requisitos, com indicador único e título._

#### UC01 – Registrar-se

| **Descrição**             | Como usuário eu quero me cadastrar para definir meu perfil de forma personalizada |
| ------------------------- | --------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                           |
| **Prioridade**            | 0                                                                                 |
| **Requisitos associados** | RF001                                                                             |
| **Fluxo Principal**       | home/Cadastro                                                                     |

#### UC02 – Login

| **Descrição**             | Como usuário eu quero realizar login com senha, para garantir a segurança das minhas informações |
| ------------------------- | ------------------------------------------------------------------------------------------------ |
| **Atores**                | usuário                                                                                          |
| **Prioridade**            | 0                                                                                                |
| **Requisitos associados** | RF001                                                                                            |
| **Fluxo Principal**       | Home/Login                                                                                       |

#### UC03 – Anunciar Pet

| **Descrição**             | Como usuário eu quero cadastrar meus pets, para os anunciar para adoção |
| ------------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                                                     |
| **Prioridade**            | 0                                                                                                           |
| **Requisitos associados** | RF002                                                                                                       |
| **Fluxo Principal**       | Home/Login/Pets/Cadastrar Pets                                                                              |

#### UC04 – Favoritar Pet

| **Descrição**             | Como usuário eu quero favoritar um pet, para salvar minhas escolhas                          |
| ------------------------- | -------------------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                                      |
| **Prioridade**            | 0                                                                                            |
| **Requisitos associados** | RF003                                                                                        |
| **Fluxo Principal**       | Home/Login/Pets/                                                                             |

#### UC05 – Visualizar favoritos

| **Descrição**             | Como usuário eu quero visualizar meus pets favoritos, para filtrar melhor minhas opções de adoção  |
| ------------------------- | -------------------------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                                            |
| **Prioridade**            | 0                                                                                                  |
| **Requisitos associados** | RF004                                                                                              |
| **Fluxo Principal**       | Home/Login/Pets/Favoritos                                                                          |

#### UC06 – Visualizar informações do Pet

| **Descrição**             | Como usuário eu quero visualizar as informações de um animal, para saber melhor seu nome,gostos, se é vacinado, etc   |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                                                               |
| **Prioridade**            | 0                                                                                                                     |
| **Requisitos associados** | RF006                                                                                                                 |
| **Fluxo Principal**       | Home/Login/Pets/Informações                                                                                           |

#### UC07 – Editar e Excluir Pets

| **Descrição**             | Como administrador de um pet gostaria de editar informações sobre ele e tambem exclui-lo caso desejar                 |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Atores**                | usuário                                                                                                               |
| **Prioridade**            | 0                                                                                                                     |
| **Requisitos associados** | RF005                                                                                                                 |
| **Fluxo Principal**       | Home/Login/Pets/Informações                                                                                           |
                                                                                
