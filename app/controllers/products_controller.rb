class ProductsController < InheritedResources::Base

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
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, notice: "New Product has been created."
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, notice: "Product has been updated."
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path, notice: "Product has been destroyed"
    else
      redirect_to @product, error: "For some reason this Product can not be destroyed."
    end
  end
end
