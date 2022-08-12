Dado('que eu acesse a Home Page do projeto Qa.Coders') do
    home.load
end
  
Então('devo visualizar a informação {string}') do |text_home_feature|
    home.validate_text_home(text_home_feature)    
end

Quando('clico no menu {string}') do |menu|
    home.click_button(menu)
end
