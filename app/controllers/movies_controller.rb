class MoviesController < ApplicationController
  def index
    @movie = Movie.all

    if params[:keyword].present?
      keyword = params[:keyword].strip
      @movie = @movie.where("name LIKE ? OR description LIKE ?", "%#{keyword}%", "%#{keyword}%")
    end

    if params[:is_showing].present?
      if params[:is_showing] == '1'
        @movie = @movie.where(is_showing: true)
      elsif params[:is_showing] == '0'
        @movie = @movie.where(is_showing: false)
      end
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @schedules = Movie.find(params[:id]).schedules
  end
end
