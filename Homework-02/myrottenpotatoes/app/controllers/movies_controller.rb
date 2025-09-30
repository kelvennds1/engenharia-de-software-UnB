class MoviesController < ApplicationController
  def index
    @sort = params[:sort]  # Adicione esta linha para rastrear qual coluna está ordenada
    @movies = case @sort   # Mudou de params[:sort] para @sort
              when 'title'
                Movie.order(:title)
              when 'release_date'
                Movie.order(:release_date)
              else
                Movie.all
              end
  end

  def show
    id = params[:id] # obtém o id do parâmetro da URL
    @movie = Movie.find(id)
  end

  def new
    
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "#{@movie.title} was deleted."
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :release_date)
  end

end