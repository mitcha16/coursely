class AssignmentsController < ApplicationController
  def index
    @complete = Assignment.get_assignments('complete')
    @incomplete = Assignment.get_assignments('incomplete')
  end
end
