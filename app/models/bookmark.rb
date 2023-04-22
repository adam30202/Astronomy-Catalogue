class Bookmark < ApplicationRecord
    belongs_to :user, :optional => true #REMOVE LATER #use dependant destroy here?
    belongs_to :astronomical_item, :optional => true #REMOVE LATER
end