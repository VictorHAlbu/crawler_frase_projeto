Dado('que eu entrei no quotes') do
  visit("http://quotes.toscrape.com/")
end

Então('devo cadastrar os dados no banco de dados') do
  page.all(".col-md-8 quote tags a").each do |capybara_conteudo|
  begin
  	quote = capybara_conteudo.all("span")[0].text
  	author = capybara_conteudo.all("span")[1].author
  	author_about = capybara_conteudo.all("a")[0]
  	tags = capybara_conteudo("tag")
  	Quotes.create(
  		quote: quote,
  		author: author,
  		author_about: author_about,
  		tags: tags
  	)
  rescue;end
  end
end