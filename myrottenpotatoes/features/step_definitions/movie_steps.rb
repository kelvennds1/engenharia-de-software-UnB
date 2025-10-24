# Step definitions específicos para o domínio de Movies
# Usando a abordagem DECLARATIVA recomendada no HW3

# Step declarativo para criar múltiplos filmes de uma vez (usando tabela Cucumber)
Given(/^the following movies exist:$/) do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(
      title: movie['title'],
      rating: movie['rating'],
      release_date: Date.parse(movie['release_date'])
    )
  end
end

# Verificar quantidade de filmes no banco
Then(/^(\d+) seed movies should exist$/) do |num_movies|
  expect(Movie.count).to eq(num_movies.to_i)
end

# Verificar que todos os filmes estão visíveis
Then(/^I should see all of the movies$/) do
  Movie.find_each do |movie|
    expect(page).to have_content(movie.title)
  end
end
