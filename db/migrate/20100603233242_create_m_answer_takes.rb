class CreateMAnswerTakes < ActiveRecord::Migration
  def self.up
    create_table :m_answer_takes do |t|
      t.integer :m_question_take_id
      t.integer :m_answer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :m_answer_takes
  end
end
