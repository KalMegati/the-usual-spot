class Location < ActiveRecord::Base
    has_many :haunts
    has_many :characters, through: :haunts
    belongs_to :writer
end