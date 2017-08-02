class CoursesController < ApplicationController
  def index
    @courses = Course.get_all_courses
  end

  def show
    @course = Course.get_course(params[:id])
    @assignments = Course.get_assignments(params[:id])
  end
end
