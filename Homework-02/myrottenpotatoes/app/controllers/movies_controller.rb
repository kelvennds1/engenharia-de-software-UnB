class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] # obtém o id do parâmetro da URL
    @movie = Movie.find(id)
  end
end