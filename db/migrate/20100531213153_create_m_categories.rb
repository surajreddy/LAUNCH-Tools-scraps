class CreateMCategories < ActiveRecord::Migration
  def self.up
    create_table :m_categories do |t|
      t.integer :m_assessment_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :m_categories
  end
end
