class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    element :title_aprenda_na_pratica, 'div[class="title"]'
    element :btn_sobre_nos, 'a[href="/#sobre-nos"]'
    element :btn_depoimentos, 'a[href="/#depoimentos"]'
    element :btn_parceiros, 'a[href="/#parceiros"]'
    element :btn_fale_conosco, 'a[href="/#faleConosco"]'

    set_url '/'

    # def click_button(sobre_nos)
    #     btn_sobre_nos.click()
    # end

    def validate_text_home(text_home_feature)
        if text_home_feature == "Aprenda na prática."
            el_title_HomePage = find('div[class="title"]')

            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expected element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end
        elsif text_home_feature == "Sobre nós."
            el_title_HomePage = find('a[href="/#sobre-nos"]')

            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expected element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end
        elsif text_home_feature == "Qa.Coders é feito para os alunos"
            el_title_HomePage = find('#depoimentos > div.title.MuiBox-root.css-0 > div > h3')

            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expected element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end
        elsif text_home_feature == "Parceiros"
            el_title_HomePage = find('#parceiros > h3')

            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expected element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end
        elsif text_home_feature == "Fale Conosco"
            el_title_HomePage = find('#faleConosco > div > h3')

            if el_title_HomePage.text.eql?(text_home_feature) != true
                raise "Expected element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
            end
        end
    end

    def click_button(menu)
        if menu == "Sobre nós"
            btn_sobre_nos.click()
        elsif menu == "Depoimentos"
            btn_depoimentos.click()
        elsif menu == "Parceiros"
            btn_parceiros.click()
        elsif menu == "Fale Conosco"
            btn_fale_conosco.click()
        end
    end
end