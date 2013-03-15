class Restaurant

  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + 
      order.keys.inject(0) do |order_cost, key|
        order_cost + order[key] * @menu[key]
      end
    end
  end

end
