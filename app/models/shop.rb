class Shop < ActiveRecord::Base
  has_many :bike

  def shops_without_favorite

  end

  def bike_names
    bike_array = []
    bikes = Bike.where("shop_id = '#{self.id}'")
    bikes.each do |bike|
      bike_array << bike.name
    end
    return bike_array
  end

  def buyers
    buyers_array = []
    bikes = Bike.where("shop_id = '#{self.id}'")
    bikes.each do |bike|

      buyers = Buyer.where("id = '#{bike.buyer_id}'")
      buyers.each do |buyer|
        buyers_array << buyer.first_name
      end
    end
    return buyers_array
  end


end