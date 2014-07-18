class Question < ActiveRecord::Base
  enum q_type: [ :visual, :textual ]
  after_initialize :set_default, :if => :new_record?
  
  def set_default
    self.q_type ||= :question
    self.current ||= :current
  end 
  
  has_many :responses
  has_many :visuals
end
