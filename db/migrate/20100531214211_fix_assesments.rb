class FixAssesments < ActiveRecord::Migration
  def self.up
    add_column :m_assessments, :group_id, :integer
  end

  def self.down
    remove_column :m_assessments, :group_id
  end
end
