class RingsController < InheritedResources::Base

  def index
    @rings = Ring.all
  end

  def show
    @ring = Ring.find(params[:id])
  end

  def new
    @ring = Ring.new
  end

  def create
    @ring = Ring.new(params[:ring])
    if @ring.save
      redirect_to @ring, notice: "New Ring has been created."
    else
      render action: :new
    end
  end

  def edit
    @ring = Ring.find(params[:id])
  end

  def update
    @ring = Ring.find(params[:id])
    if @ring.update_attributes(params[:ring])
      redirect_to @ring, notice: "Ring has been updated."
    else
      render :edit
    end
  end

  def destroy
    @ring = Ring.find(params[:id])
    if @ring.destroy
       redirect_to rings_path, notice: "Ring has been destroyed."
    else
      redirect_to @ring, error: "For some reason this Ring can not be destroyed."
    end
  end
end
