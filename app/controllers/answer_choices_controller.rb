class AnswerChoicesController < ApplicationController

  def index
    @answer_choices = AnswerChoice.all
  end

  def show
    @answer_choice = AnswerChoice.find(params[:id])
  end

  def new
    @answer_choice = AnswerChoice.new
  end

  def create
    @answer_choice = AnswerChoice.new(answer_choice_params)
  
    if @answer_choice.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @answer_choice = AnswerChoice.find(params[:id])
  end

  def update
    @answer_choice = AnswerChoice.find(params[:id])
  
    if @answer_choice.update_attributes(answer_choice_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @answer_choice = AnswerChoice.find(params[:id])
  end

  def destroy
    @answer_choice = AnswerChoice.find(params[:id])
    @answer_choice.destroy
    redirect_to(:action => 'index')
  end

  private 

  def answer_choice_params
    params.require(:answer_choice).permit(:text, :question_id, :image)
  end 
end
