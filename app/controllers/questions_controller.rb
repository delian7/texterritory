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
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    
    if @question.update_attributes(question_params)
      redirect_to(:action => 'show', :id => @question.id)
    else
      render('edit')
    end
  end

  def delete
    @question = Question.find(params[:id])
  end
  
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to(:action => 'index')
  end
  
  private 
  
  def question_params
    params.require(:question).permit(:text, :current, :q_type)
  end 
end

