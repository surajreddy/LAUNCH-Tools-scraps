class CreateMAssessments < ActiveRecord::Migration
  def self.up
    create_table :m_assessments do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :m_assessments
  end
end
