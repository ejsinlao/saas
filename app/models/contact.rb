class Contact < ActiveRecord::Base
   #Contact form validations
    #we dont actually have to write these values down compared to Java or C++
    #name
    #email
    #comments
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true
    
end