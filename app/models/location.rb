class Location < ActiveRecord::Base
    has_many :haunts, dependent: :destroy
    has_many :characters, through: :haunts
    belongs_to :writer
end