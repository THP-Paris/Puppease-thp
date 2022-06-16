class Dog < ApplicationRecord
    belongs_to :user

    enum gender: {male: 0, female: 1}
    enum breed: {Pitbull: 0, labrador: 1, golden:2, chihuahua: 3}
    enum color: {black: 0, white: 1, brown:2, sand:3}
end
