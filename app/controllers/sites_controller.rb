class SitesController < InheritedResources::Base

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def create
    @site = Site.new(params[:site])
    if @site.save
      redirect_to @site, notice: "New Site has been created."
    else
      render action: :new
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    if @site.update_attributes(params[:site])
      redirect_to @site, notice: "Site has been updated."
    else
      render :edit
    end
  end

  def destroy
    @site = Site.find(params[:id])
    if @site.destroy
       redirect_to sites_path, notice: "Site has been destroyed."
    else
      redirect_to @site, error: "For some reason this Site can not be destroyed."
    end
  end
end
