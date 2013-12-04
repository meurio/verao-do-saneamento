class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :phone
  validates_uniqueness_of :email, :phone
  after_create { UserMailer.welcome(self).deliver }
end
