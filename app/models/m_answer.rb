class MAnswer < ActiveRecord::Base
  belongs_to :m_question
  belongs_to :m_category
  has_many :m_answer_takes, :dependent => :destroy
  validates_presence_of :m_question_id, :m_category_id, :body
end
