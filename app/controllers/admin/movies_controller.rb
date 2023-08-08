class Admin::MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
  end
  
end
