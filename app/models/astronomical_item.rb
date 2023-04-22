class AstronomicalItem < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :bookmarks, :dependent => :destroy
    has_many :comments, :dependent => :destroy
end
