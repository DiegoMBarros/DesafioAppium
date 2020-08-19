Dado('que estou na tela de login') do
    wait_true(15) { exists { find_element(:xpath, '//*[@text="Login"]') } }
end
  
Quando('informo o {string} e {string}') do |cpf, senha|
    cpf_input = $driver.find_element(:xpath, '//*[@text="CPF"]')
    senha_input = $driver.find_element(:xpath, '//*[@text="Senha"]')
    cpf_input.send_keys(cpf)
    senha_input.send_keys(senha)
end

Quando('toco no botão {string}') do |bt_entrar|
    entrar_button = $driver.find_element(:xpath, "//*[@text='"+bt_entrar+"']")
    entrar_button.click
end

Então('vejo a tela inicial do aplicativo') do
    pending # O CPF e a senha fornecida para o desafio não funcionaram.
end

Então('vejo a mensagem {string}') do |mensagem|
    wait_true(5) { exists { find_element(:xpath, "//*[@text='"+mensagem+"']")} }
end