require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #                                           
  # REMEMBER: This method **should** update cart
   
  cart.each do |item|
    coupons.each do |coups|
      #binding.pry 
      if coups[:item] == item[:item] && item[:count] >= coups[:num]
        if coups[:num] == item[:count]
          item = {:item => "#{item[:item]} W/ COUPON", :price => coups[:cost] / coups[:num], :clearance => item[:clearance], :count => item[:count]}
        end   
      end
    end  
  end  
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
