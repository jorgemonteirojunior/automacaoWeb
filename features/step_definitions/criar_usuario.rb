Quando("eu cadastro meu Usuário") do
user.load
user.preencher_usuario
  end
  
  Então("eu verifico se o usuario foi cadastrado") do
      texto= find('#notice')
      expect(texto.text).to eql 'Usuário Criado com sucesso'
  end