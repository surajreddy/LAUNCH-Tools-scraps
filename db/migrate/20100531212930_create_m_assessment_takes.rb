class CreateMAssessmentTakes < ActiveRecord::Migration
  def self.up
    create_table :m_assessment_takes do |t|
      t.integer :user_id
      t.integer :m_assessment_id

      t.timestamps
    end
  end

  def self.down
    drop_table :m_assessment_takes
  end
end
