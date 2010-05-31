class User < ActiveRecord::Base
  validates_presence_of :username, :password, :group_id
  belongs_to :group
end
