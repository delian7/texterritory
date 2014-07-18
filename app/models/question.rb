class Question < ActiveRecord::Base
  enum q_type: [ :visual, :textual ]
  after_initialize :set_default_q_type, :if => :new_record?
  
  def set_default_q_type
    self.q_type ||= :question
  end 
  
  has_many :responses
  has_many :visuals
end
