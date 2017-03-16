class User < ApplicationRecord
    
    before_save{self.email = email.downcase}
    
    validates :fName, presence: true, 
                length:{maximum: 20}
    validates :sName, presence: true,
                length:{maximum: 20}
    
    validates :email, presence: true, 
                length: {maximum: 255},
                format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
                uniqueness: {case_sensitive: false}
                
    validates :password, presence: true,
                length: {minimum: 6}
    #has_secure_password
    
end
