# reference 2032
# inventory_controller.rb
require 'csv'
# require "erb"
# require 'pp'

class InventoryController < ApplicationController

	def list
		@inventory = inventoryitems
	end
	def detail
		@inventory=inventoryitems
		@inventoryitem = @inventory.find{|inventoryitem| inventoryitem.pid == params[:pid]}
	end
	def inventoryitems
		@inventory = []

		CSV.foreach(Rails.root + 'data/mf_inventory.csv', headers: true) do |row|

			if row.to_h['quantity'].to_i > 0
			iteminv = Iteminv.new  # a new Class
				iteminv.pid = row.to_h['pid']
				iteminv.item = row.to_h['item']
				iteminv.description = row.to_h['description']
				iteminv.price = row.to_h['price']
				iteminv.condition = row.to_h['condition']
				iteminv.dimension_w = row.to_h['dimension_w']
				iteminv.dimension_l = row.to_h['dimension_l']
				iteminv.dimension_h = row.to_h['dimension_h']
				iteminv.img_file = row.to_h['img_file']
				iteminv.quantity = row.to_h['quantity']
				iteminv.category = row.to_h['category']
				@inventory << iteminv
			end # close do at CSV
		end
		@inventory
	end # close the defintion
end # close the CLASS
