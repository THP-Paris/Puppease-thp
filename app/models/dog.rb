class Dog < ApplicationRecord
    belongs_to :owner, class_name: "User", foreign_key: "user_id"
    has_one :wishlist
    has_many :fans, through: :wishlist, class_name: "User", foreign_key: "user_id"
    has_many_attached :pictures
    has_many :wishlist_dogs, dependent: :destroy

    
    

    enum gender: {Mâle: 1, Femelle: 2}
    enum breed: {Labrador: 0, "Golden Retriever": 1, "Border Collie":2, Chihuahua: 3, Bulldog:4, "Berger Australien":5, Bichon:6, Boxer:7, Husky:8, "Berger Allemand":9, "Chow-chow":10, Malinois:11, "Staffordshire Bull Terrier": 12, "Bouledogue Français":13, Beagle:14, "Cane Corso": 15, "Épagneul Breton":16, "Bouvier Bernois":17, "Jack Russell": 18, "Berger Blanc Suisse":19, Akita:20, 
    Dalmatien:21, Samoyède:22, Rottweiler:23, "Shiba Inu":24, "Saint-Bernard":25, Dobermann:26, Croisé:27}

    enum color:  {Noir: 0, Blanc: 1, Marron:2, Chocolat:3, Marron:4, Beige:5, Fauve:6, Gris:7, Bleu:8}
    enum vaccine: {Oui: 0, Non: 1}
    enum lof: {Inscrit: 0, "Non inscrit": 1}
    enum reward:  {Recompensé:0, "Non recompensé":1}

    extend FriendlyId
    friendly_id :name, use: :slugged

end
