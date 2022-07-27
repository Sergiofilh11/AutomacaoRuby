Dado('que eu acesse a Home Page do projeto Qa.Coders') do
    home.load
end
  
Então('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_homePage(titleHomePage)    
end