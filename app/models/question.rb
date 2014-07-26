class Question < ActiveRecord::Base
  enum q_type: { textual: 0, visual: 1 }
  after_initialize :set_default, :if => :new_record?
  
  def set_default
    self.q_type ||= :question
    self.current ||= :current
  end 
  
  has_many :responses
  has_many :answer_choices
end
