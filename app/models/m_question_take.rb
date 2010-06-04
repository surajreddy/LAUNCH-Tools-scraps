class MQuestionTake < ActiveRecord::Base
  belongs_to :m_assessment_take
  belongs_to :m_question
  has_many :m_answer_takes, :dependent => :destroy
  validates_presence_of :m_assessment_take_id, :m_question_id
end
