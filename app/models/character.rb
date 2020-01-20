class Character < ActiveRecord::Base
    has_many :haunts, dependent: :destroy
    has_many :locations, through: :haunts
    belongs_to :writer

    validates_uniqueness_of :name
end