class User < ActiveRecord::Base
  has_one :login
  has_many :complaints
end
