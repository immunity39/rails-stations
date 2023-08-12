class Admin::SchedulesController < ApplicationController
  before_action :set_schedule, only: [:edit, :updaet, :destroy]

  def index
    @movie = Movie.includes(:schedules).where.not(schedules: {id: nil})
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @movie_id = Movie.find(params[:movie_id])
    @schedule = @movie_id.schedules.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @movie_id = Movie.find(params[:schedule][:movie_id])

    @schedule.movie = @movie_id

    if @schedule.save
      redirect_to admin_schedules_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      redirect_to admin_schedules_path
    else
      render :edit
    end
  end

  def destroy
    @schedule.destroy
      redirect_to admin_schedules_path
  end

  private

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:start_time, :end_time)
  end

end
