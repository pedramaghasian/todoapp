class Test < ApplicationRecord
    validates :name, presence: true
    validates :family,presence: true
end