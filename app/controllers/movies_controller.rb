class MoviesController < ApplicationController
  def index
    @movie = Movie.all

    if params[:keyword].present?
      @movie = @movie.search_by_word(params[:keyword])
    end

    if params[:is_showing].present?
      @movie = params[:is_showing] == "1" ? @movie.showing : @movie.upcoming
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @schedules = Movie.find(params[:id]).schedules
  end
end
