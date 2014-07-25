class AnswerChoice < ActiveRecord::Base
  belongs_to :question
  
  mount_uploader :image, AnswerChoiceUploader
end
