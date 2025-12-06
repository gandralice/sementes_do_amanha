# Sementes do Amanhã - Banco de Dados

Projeto de modelagem e implementação de banco de dados para a iniciativa social "Sementes do Amanhã". O objetivo é centralizar o gerenciamento de informações sobre as crianças atendidas, seus núcleos familiares, o corpo de voluntários e as atividades realizadas.

## Funcionalidades do Modelo

O banco de dados foi estruturado para gerenciar:

* Crianças: Dados pessoais e escolares.
* Responsáveis: Vínculo familiar e contatos.
* Voluntários: Cadastro de profissionais e disponibilidade.
* Atividades: Oficinas e aulas (pintura, reforço escolar, esportes).
* Atendimentos: Registro de sessões individuais (psicológicas, pedagógicas, sociais).
* Frequência: Controle de presença das crianças nas atividades.

## Estrutura do Repositório

* script.ddl: Script SQL para criação das tabelas, chaves primárias e relacionamentos.
* insercao.txt: Script para popular o banco com dados fictícios para testes.
* consultas.txt: Exemplos de queries SQL para relatórios (ex: lista de chamada, atendimentos por criança).
* /modelagem: Contém os diagramas lógicos e relacionais (arquivos do Oracle Data Modeler e imagens PNG).

## Tecnologias

* Oracle SQL Developer Data Modeler
* Oracle Database (PL/SQL)
* SQL
