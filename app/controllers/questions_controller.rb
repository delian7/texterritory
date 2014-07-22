class QuestionsController < ApplicationController
  
  
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new(:current => true)
  end

  def create
    @question = Question.new(question_params)
    
    if @question.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
  end

  def delete
  end
  
  private 
  
  def question_params
    params.require(:question).permit(:text, :current)
  end 
end

