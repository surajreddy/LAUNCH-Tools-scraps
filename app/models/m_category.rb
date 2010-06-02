class MCategory < ActiveRecord::Base
  belongs_to :m_assessment
  has_many :m_answers
  validates_presence_of :m_assessment_id, :name, :description
end
