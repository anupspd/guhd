class Login < ActiveRecord::Base
  belongs_to :user

def remember_me!
    self.remember_token = "#{id}--#{Time.now.utc}"
    self.save
  end
 def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user  if user[:Password] == submitted_password
    end
end
