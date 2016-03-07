# item inventory this file
# labwk3/app/models/iteminv.rb
# make this file match the dot CSV file
# iteminv.rb
	class Iteminv

	attr_accessor  :pid, :item, :description, :price,
	 :condition, :dimension_w, :dimension_l, :dimension_h,
	  :img_file, :quantity, :category

	end


# where is the CSV file,
# douglasdrahem/myprojects/labwk3/data/mf_inventory
# how is that happening and WHY ???
# ask ? pass' to the inventory_controll.rb
