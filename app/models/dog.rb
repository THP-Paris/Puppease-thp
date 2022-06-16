class Dog < ApplicationRecord
    belongs_to :user
    has_one_attached :avatar

    GENDERS = {mâle: 0, femelle: 1}
    BREEDS = {Pitbull: 0, Labrador: 1, Golden:2, Chihuahua: 3, Bulldog:4, Berger:5, Bichon:6, Boxer:7, Husky:8}
    COLORS = {noir: 0, blanc: 1, marron:2, sable:3}
    VACCINES = {oui: 0, non: 1}
    LOFS = {oui: 0, non: 1}
    REWARDS = {oui:0, non:1}
end
