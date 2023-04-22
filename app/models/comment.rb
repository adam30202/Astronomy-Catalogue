class Comment < ApplicationRecord
    belongs_to :user, :optional => true #REMOVE LATER
    belongs_to :astronomical_item, :optional => true #REMOVE LATER
end
