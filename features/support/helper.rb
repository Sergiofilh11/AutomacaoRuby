module Helper
    def print_screen(file_name, result)
        # Antes de tirar o print, irá guardar a data e hora
        date = "#{Time.now.srtftime("%Y/%B/%D")}"
        hour = "#{Time.now.srtftime("%H-%M-%S")}"

        file_path = "reports/screenshorts/tests_#{result}"
        screenshorts = "#{file_path}/#{date}/#{hour}/#{file_name}.png"
        page.save_screenshot(screenshorts)
        attach(screenshorts, 'image/png')

    end
end