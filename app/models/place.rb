class Place < ApplicationRecord
    belongs_to :user
    geocoded_by :address
    after_validation :geocode
    

    def address
        [street, city, zip].compact.join(", ")
    end

end
