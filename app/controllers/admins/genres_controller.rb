class Admins::GenresController < ApplicationController
  def index
  	@genre = Genre.new
  	@genres = Genre.all
  end

  def create
   	@genre = Genre.new(genre_params)
   	if @genre.save
   		redirect_to admins_genres_path
   	else
   		redirect_back(fallback_location: root_path)
   	end
  end

  def edit
  	@genre = Genre.find(params[:id])
  end

  def update
  	@genre = Genre.find(params[:id])
  	if @genre.update(genre_params)
  		redirect_to admins_genres_path
  	else
  		redirect_back(fallback_location: root_path)
  	end
  end

  def destroy
  	@genre = Genre.find(params[:id])
  	@genre.destroy
  	redirect_to admins_genres_path
  end

  private
  def genre_params
  	params.require(:genre).permit(:genre_name, :flag_active)
  end
end