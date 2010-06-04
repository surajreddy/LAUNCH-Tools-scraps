class MAssessmentTake < ActiveRecord::Base
  has_many :m_question_takes, :dependent => :destroy
  belongs_to :m_assessment
  belongs_to :user
  validates_presence_of :m_assessment_id, :user_id
end
