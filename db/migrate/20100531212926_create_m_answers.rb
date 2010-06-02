class CreateMAnswers < ActiveRecord::Migration
  def self.up
    create_table :m_answers do |t|
      t.integer :m_question_id
      t.integer :m_category_id
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :m_answers
  end
end
