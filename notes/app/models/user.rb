class User < ApplicationRecord
    has_many :notes
    #VALID_EMAIL_REGEX = /A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    #VALID_EMAIL_REGEX = [a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+
    
    VALID_EMAIL_REGEX = /\A[a-zA-Z0-9.!\#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\z/
     
    before_save { self.email = email.downcase }
    
    validates :name,
        presence: true,
        length: { maximum: 12 }
    
    validates :email,
        presence: true,
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
        
    validates :password,
        presence: true,
        length: { minimum: 6 }
        
    has_secure_password
end
