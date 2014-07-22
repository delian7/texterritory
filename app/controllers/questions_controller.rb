class QuestionsController < ApplicationController
  
  layout false 
  
  def index
    @questions = Question.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
