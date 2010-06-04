class Group < ActiveRecord::Base
  validates_presence_of :name
  has_many :users, :dependent => :destroy
  has_many :m_assessments, :dependent => :destroy
end
