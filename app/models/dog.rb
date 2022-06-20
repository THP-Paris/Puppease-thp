class Dog < ApplicationRecord
    belongs_to :owner, class_name: "User", foreign_key: "user_id"
    has_many_attached :pictures
    

    enum gender: {Mâle: 1, Femelle: 2}
    enum breed: {Pitbull: 0, Labrador: 1, Golden:2, Chihuahua: 3, Bulldog:4, Berger:5, Bichon:6, Boxer:7, Husky:8}
    enum color:  {noir: 0, blanc: 1, marron:2, sable:3}
    enum vaccine: {vacciné: 0, "non vacciné": 1}
    enum lof: {oui: 0, non: 1}
    enum reward:  {recompensé:0, "non recompensé":1}

    extend FriendlyId
    friendly_id :name, use: :slugged

end
