class Product < ActiveRecord::Base
	validates :description, :name, :presence => true
	validates :price_in_cents, :numericality => {:integer_only => true}
end
