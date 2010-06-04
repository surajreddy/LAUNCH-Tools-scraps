class MQuestion < ActiveRecord::Base
  belongs_to :m_assessment
  validates_presence_of :body, :m_assessment_id
  has_many :m_question, :dependent => :destroy
end
