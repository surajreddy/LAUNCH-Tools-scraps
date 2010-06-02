class CreateMQuestionTakes < ActiveRecord::Migration
  def self.up
    create_table :m_question_takes do |t|
      t.integer :m_assessment_take_id
      t.integer :m_answer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :m_question_takes
  end
end
