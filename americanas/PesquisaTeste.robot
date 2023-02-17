*** Settings ***

Resource  PesquisaResource.robot
Library

**Test Cases***
Caso de Teste 01: Pesquisar produto
  Acessar a página da Americanas
  Pesquisar por "Celular Xiaomi" 
  Conferir mensagem de pesquisa por "Celulares e Smartphones"

Caso de Teste 02: Pesquisa por produto inexistente
  Acessar a página da Americanas
  Pesquisar por "XPTO551" 
  Conferir mensagem de pesquisa por "poxa, nenhum resultado encontrado"

Caso de Teste 03: Pesquisa por produto com nome errado
  Acessar a página da Americanas
  Pesquisar por "Selular Xiaomi" 
  Conferir mensagem de pesquisa por "exibindo resultado para: celular xiaomi"