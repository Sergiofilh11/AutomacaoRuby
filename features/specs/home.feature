# language: pt

Funcionalidade: Home Page

@validate_home_page
Cenario: Acessar Home Page

Dado que eu acesse a Home Page do projeto Qa.Coders
Então devo visualizar a informação "Aprenda na prática."

@validate_menu_sobre_nos
Cenario: Validar Menu Sobre nós

Dado que eu acesse a Home Page do projeto Qa.Coders
Quando clico no menu "Sobre nós"
Então devo visualizar a informação "Sobre nós"

@validate_menu_depoimentos
Cenario: Validar Menu Depoimentos

Dado que eu acesse a Home Page do projeto Qa.Coders
Quando clico no menu "Depoimentos"
Então devo visualizar a informação "O Qa.Coders é feito para os alunos"

@validate_menu_parceiros
Cenario: Validar Menu Parceiros

Dado que eu acesse a Home Page do projeto Qa.Coders
Quando clico no menu "Parceiros"
Então devo visualizar a informação "Parceiros"

@validate_menu_fale_conosco
Cenario: Validar Menu Fale Conosco

Dado que eu acesse a Home Page do projeto Qa.Coders
Quando clico no menu "Fale Conosco"
Então devo visualizar a informação "Fale Conosco"
