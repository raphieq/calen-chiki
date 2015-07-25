class User < ActiveRecord::Base
	has_secure_password
	has_many :happenings
	def admin? 
    self.role == 'Admin' 
    end
end
