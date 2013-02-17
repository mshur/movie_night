class EventsController < ApplicationController
  def index
    @events = Event.all(:order => "created_at DESC")
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(params[:event])
    render :action => :show
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  def show
    @event = Event.find(params[:id])
  end

  def newmovie
    @movie = Movie.new
  end

  def createmovie
    @movie = Movie.create(params[:movie])
    
  end
end
