class VisualsController < ApplicationController
  def index
    # @question = Question.where(current: true)
    @questions = Question.where(current: true)
  end
  
  
end
