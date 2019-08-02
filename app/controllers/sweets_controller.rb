class SweetsController < ApplicationController
  before_action:current_sweet, only:[:show, :edit]
  def index
    @sweets = Sweet.all
  end
  def show
    @sweet = current_sweet
  end
  def new 
    @sweet = Sweet.new
    # @sweet = current_sweet 
    @vendors = Vendor.all 
  end
  def create
    @sweet = Sweet.create(sweet_params)

    # if @sweet.valid?
    #   @sweet.save
      redirect_to @sweet
    # else
    #   render :new
    # end
   
  end
  def edit 
  end 
  private
  def current_sweet
    @sweet = Sweet.find(params[:id])
  end
  def sweet_params
    params.require(:sweet).permit(:name, vendor_ids:[])
  end
end
