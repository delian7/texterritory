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
      @response.update_attributes(:user_id => current_user.id)
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @response = Response.find(params[:id])
  end
  
  def update
    @response = Response.find(params[:id])
    
    if @response.update_attributes(question_params)
      redirect_to(:action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @response = Response.find(params[:id])
  end
  
  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    redirect_to(:action => 'index')
  end
  
  private 
  
  def response_params
    params.require(:response).permit(:input, :question_id)
  end 
end
