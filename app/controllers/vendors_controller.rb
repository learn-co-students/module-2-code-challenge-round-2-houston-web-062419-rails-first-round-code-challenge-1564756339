class VendorsController < ApplicationController
  before_action:current_vendor, only:[:show]
  def index
    @vendors = Vendor.all
  end
  def show
    @vendor = current_vendor
    @sweets = @vendor.sweets
  end
  private
  def current_vendor
    @sweet = Vendor.find(params[:id])
  end
  def vendor_params
    params.require(:vendor).permit(:name, sweet_ids:[])
  end
end
