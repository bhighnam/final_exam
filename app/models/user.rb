class User < ActiveRecord::Base
   # checks if the data entered in for the name attribute is 50 characters long and the text area is not blank before entering into the db
   before_save { self.email = email.downcase }
   validates :name,  presence: true, length: { maximum: 50 }
   
   # checks if the data entered in for the email attribute is there before being entered into the db 
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
   
    has_secure_password
  validates :password, length: { minimum: 6 }

end # end of User < ActiveRecord::Base
