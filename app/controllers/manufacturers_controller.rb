class ManufacturersController < InheritedResources::Base

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])
    if @manufacturer.save
      redirect_to @manufacturer, notice: "New Manufacturer has been created."
    else
      render :new
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    if @manufacturer.update_attributes(params[:manufacturer])
      redirect_to @manufacturer, notice: "Manufacturer has been updated."
    else
      render :edit
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    if @manufacturer.destroy
      redirect_to manufacturers_path, notice: "Manufacturer has been destroyed"
    else
      redirect_to @manufacturer, error: "For some reason this Manufacturer can not be destroyed."
    end
  end
end
