class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new(:event_id => params[:event_id])
    @id = params[:id]


  end

  def create
    @movie = Movie.create(params[:movie])
    redirect_to event_path(@movie.event)


  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes(params[:movie])
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
  end

  def show
    @movie = Movie.find(params[:id])

  end

  



end
