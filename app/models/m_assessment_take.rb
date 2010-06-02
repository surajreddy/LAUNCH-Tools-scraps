class MAssessmentTake < ActiveRecord::Base
  belongs_to :m_assessment
  belongs_to :user
  
  has_many :m_question_takes
  validates_presence_of :m_assessment_id, :user_id
end
