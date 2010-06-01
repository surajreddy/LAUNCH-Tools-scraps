class Group < ActiveRecord::Base
  validates_presence_of :name
  has_many :users
  has_many :m_assessments
end
