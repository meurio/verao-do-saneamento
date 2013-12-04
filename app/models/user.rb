class User < ActiveRecord::Base
  after_create { UserMailer.welcome(self).deliver }
end
