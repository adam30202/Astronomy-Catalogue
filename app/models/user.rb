class User < ApplicationRecord
    has_secure_password #research this
    validates :email, :uniqueness => true, :presence => true #research this
    
    has_many :astronomical_items
    has_many :bookmarks, :dependent => :destroy
    has_many :comments, :dependent => :destroy
end
