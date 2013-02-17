class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @id = params[:id]
  end

  def create
    @movie = Movie.create(params[:event])
    render :action => :show
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(params[:event])
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  def show
    @movie = Movie.find(params[:id])
  end

  



end
