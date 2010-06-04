class FixQt < ActiveRecord::Migration
  def self.up
    remove_column :m_question_takes, :m_answer_id
    add_column :m_question_takes, :m_question_id, :integer
  end

  def self.down
    remove_column :m_question_takes, :m_question_id
    add_column :m_question_takes, :m_answer_id, :integer
  end
end
