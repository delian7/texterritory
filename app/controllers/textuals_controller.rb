class TextualsController < ApplicationController
  def index
    @questions = list_textual_questions
  end
end
