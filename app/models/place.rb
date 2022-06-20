class Place < ApplicationRecord
    has_many :users
    geocoded_by :address
    after_validation :geocode

    def address
        [street, city, zip].compact.join(", ")
    end
end
