class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end
  
  def create
    @response = Response.new(response_params)
    
    if @response.save
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
  
  def response_params
    params.require(:response).permit(:input, :question_id)
  end 
end
