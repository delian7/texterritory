class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || modules_index_path
  end
  
  def list_current_questions
    @questions = Question.where(current: true)
  end
  
  def list_all_questions
    @questions = Question.all
  end
  
  def list_visual_questions
    @questions = Question.where(q_type: '1').where(current: true)
  end
  
  def list_textual_questions
    @questions = Question.where(q_type: '0').where(current: true)
  end
    
  
end
