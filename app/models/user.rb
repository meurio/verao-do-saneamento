class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :phone
  validates_uniqueness_of :email, :phone
  validates :phone, format: { with: /\([\d]{2}\)\s[\d]{8,9}/ }
  validates :email, format: { with: /([0-9a-zA-Z]+[-._+&amp;])*[0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}/ }
  after_create { UserMailer.welcome(self).deliver }
end
