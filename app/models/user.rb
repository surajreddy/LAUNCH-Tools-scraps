class User < ActiveRecord::Base
  validates_presence_of :username, :password, :group_id, :firstname
  belongs_to :group
  has_many :m_assessment_takes
end
