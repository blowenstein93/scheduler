class CoursesController < ApplicationController
  def new
  end

  def index
    @courses = Course.all
  end

  def edit
  end

  def show
    @course = Course.find(params[:id])
  end

  def create
    @course = Course.new(course_params)
    if @course.save
        redirect_to courses_show_path
    end
  end


  private
    def course_params
        params.require(:course).permit(:name, :location, :difficulty, :descrption, :time, :days, :major_id, :school_id)
    end

end
