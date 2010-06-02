class MQuestionTake < ActiveRecord::Base
  belongs_to :m_assessment_take, :m_answer
  validates_presence_of :m_assesment_take_id, :m_answer_id
end
