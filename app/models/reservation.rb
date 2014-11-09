class Reservation < ActiveRecord::Base
  belongs_to :user
  has_many :car_res
  has_many :gh_res
  has_many :hall_res
end
