class VisualsController < ApplicationController
  def index
    # @question = Question.where(current: true)
    @questions = Question.where(current: true)
  end
  
  def create
    @response = Response.create({:question_id => params[:question_id]})
  end
  
  # def response_params
  #   # same as using "params[:subject]", except that it:
  #   # - raises an error if :subject is not present
  #   # - allows listed attributes to be mass-assigned
  #   params.require(:response).permit(:name, :position, :visible)
  # end
  
end
