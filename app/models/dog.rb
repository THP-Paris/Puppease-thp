class Dog < ApplicationRecord
    belongs_to :user

    GENDERS = {male: 0, female: 1}
    BREEDS = {Pitbull: 0, labrador: 1, golden:2, chihuahua: 3}
    COLORS = {noir: 0, blanc: 1, marron:2, sable:3}
    VACCINES = {oui: 0, non: 1}
    LOFS = {oui: 0, non: 1}
    REWARDS = {oui:0, non:1}
end
