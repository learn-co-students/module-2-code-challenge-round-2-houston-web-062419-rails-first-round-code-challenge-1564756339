class VendorSweet < ApplicationRecord
    belongs_to :sweet 
    belongs_to :vendor 

    # validates :price, length: { in: 0..500 }, numericality: { only_integer: true }
end
