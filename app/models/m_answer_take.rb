class MAnswerTake < ActiveRecord::Base
  belongs_to :m_question_take
  belongs_to :m_answer
  validates_presence_of :m_question_take_id
  validates_presence_of :m_answer_id
end
