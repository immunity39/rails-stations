class Admin::MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      flash[:success] = "映画情報が登録されました"
      redirect_to admin_movies_path
    else
      flash.now[:error] = "映画情報の登録に失敗しました"
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      flash[:success] = "映画情報が更新されました"
      redirect_to admin_movies_path
    else
      flash.now[:error] = "映画情報の更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @movie = Movie.find(params[:id])

    if @movie.destroy
      flash[:success] = "映画情報が削除されました"
    else
      flash[:error] = "映画情報の削除に失敗しました"
    end
    redirect_to admin_movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :description, :image_url, :is_showing)
  end

end
