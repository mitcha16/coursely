class LessonsController < ApplicationController
  def index
    @lessons = Lesson.get_all_lessons
  end

  def show
    @lesson = Lesson.get_lesson(params[:id])
    @assignments = Lesson.get_assignments(params[:id])
  end
end
