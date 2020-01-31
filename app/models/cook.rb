class Cook < ApplicationRecord
    validates :foodname, presence: true  
    validates :aboutfood, presence: true



end