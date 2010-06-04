class MQuestion < ActiveRecord::Base
  belongs_to :m_assessment
  validates_presence_of :body
  validates_presence_of :m_assessment_id
  has_many :m_answers, :dependent => :destroy
end
