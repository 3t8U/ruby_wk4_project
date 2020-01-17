class ProductssController < ApplicationController

  def index
    @products = Products.all
    render :index
  end

  def new
    @product = Products.new
    render :new
  end

  def create
    @product = Products.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Products.find(params[:id])
    render :edit
  end

  def show
    @product = Products.find(params[:id])
    render :show
  end

  def update
    @product= Products.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Products.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully deleted!"
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:prod_name, :cost, :country_of_origin)
    end

end
