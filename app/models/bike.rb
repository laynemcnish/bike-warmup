class Bike < ActiveRecord::Base
belongs_to :buyer
belongs_to :shop


def favorited_by
"#{self.buyer.first_name} #{self.buyer.last_name}"
end
end