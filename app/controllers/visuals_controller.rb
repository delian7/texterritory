class VisualsController < ApplicationController
  def index
    @questions = Question.find(1).prompt
  end
  
  
end
