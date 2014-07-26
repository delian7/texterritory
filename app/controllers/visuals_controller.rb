class VisualsController < ApplicationController
  
  def index
    @questions = list_visual_questions
  end
  
  

end
