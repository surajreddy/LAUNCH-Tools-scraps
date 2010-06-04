class User < ActiveRecord::Base
  validates_presence_of :username, :password, :group_id, :firstname
  validates_uniqueness_of :username, :scope=>:group_id
  belongs_to :group
  has_many :m_assessment_takes, :dependent => :destroy
end
