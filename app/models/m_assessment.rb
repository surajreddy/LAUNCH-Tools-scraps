class MAssessment < ActiveRecord::Base
  validates_presence_of :name, :description, :group_id
  belongs_to :group
  has_many :m_questions, :dependent => :destroy
  has_many :m_assessment_takes, :dependent => :destroy
end
