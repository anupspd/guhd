class User < ActiveRecord::Base
  has_one :login
  has_many :complaints
  has_many :reservations
end
