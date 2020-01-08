class Character < ActiveRecord::Base
    has_many :haunts
    has_many :locations, through: :haunts
    belongs_to :writer
end