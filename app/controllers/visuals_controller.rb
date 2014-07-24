class VisualsController < ApplicationController
  
  def index
    @questions = list_current_questions
  end
  
  

end
