class Writer < ActiveRecord::Base
    has_many :characters, dependent: :destroy
    has_many :locations, dependent: :destroy

    validates_uniqueness_of :handle, :password, :icon
end