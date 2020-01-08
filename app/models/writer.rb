class Writer < ActiveRecord::Base
    has_many :characters
    has_many :locations
end