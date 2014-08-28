class Buyer < ActiveRecord::Base

  def shops_without_favorite
 @bike = Bike.find_by(buyer_id: "#{self.id}" )
  shops = []
  @shops = Shop.where("id != '#{@bike.shop_id}'")
  @shops.each do |shop|
  shops << shop.name
  end
  return shops

  end

end