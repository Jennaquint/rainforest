class Product < ActiveRecord::Base
	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:integer_only => true}

	def formatted_price
		price_in_dollars = price_in_cents
		sprintf("%.2f", price_in_cents)
	end
end
