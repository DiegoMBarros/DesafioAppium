class BaseScreen
    def verificar_se_estou_na_screen(screen)
        $driver.wait_true(5) { $driver.exists {$driver.find_element(:xpath, "//*[@text='"+screen+"']") } }
    end

    def tocar_botao(texto)
        start_app = $driver.find_element(find_element(:xpath, "//*[@text='"+texto+"']"))
        start_app.click
    end
end