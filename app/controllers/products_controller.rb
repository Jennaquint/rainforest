class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to products_url
  	else
  		render :new
  	end 
  end 

  def edit
    @product = Product.find(params[:id])
  end

  def update
  	@product = Product.find(params[:id])

  	if Product.update_attributes(product_params)
  		redirect_to product_path(@product)
  	else
  		render :edit
  	end 
  end

  def destory
  	@product = Product.find(params[:id])

  	@products.destroy 
  	redirect_to product_path
  end

  private
  def product_params
  	params.require(:product).permit(:name, :description, :price_in_cents)
  end

end
