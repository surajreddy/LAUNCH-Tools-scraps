class MAssessment < ActiveRecord::Base
  validates_presence_of :name, :description, :group_id
  belongs_to :group
  has_many :m_questions
end
