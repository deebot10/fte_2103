class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name      = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory.include?(item) == false
      0
    elsif @inventory.include?(item) == true
      inventory[item]
    end
  end

  def stock(item, quantity)
     if @inventory.include?(item)
       @inventory[item] += quantity
     else
       @inventory[item] = quantity
    end
  end

  def potential_revenue
    revenue = 0
    @inventory.each do |item|
      revenue += item[0].price * item[1]
    end
    revenue
  end
end
