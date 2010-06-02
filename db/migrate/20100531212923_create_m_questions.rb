class CreateMQuestions < ActiveRecord::Migration
  def self.up
    create_table :m_questions do |t|
      t.integer :m_assessment_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :m_questions
  end
end
