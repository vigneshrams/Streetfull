class ShopsController < ApplicationController
  before_action :find_shop, only: [:show, :edit, :update, :destroy]
  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_param)

    if @shop.save
      redirect_to @shop
    else
      render "New"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @shop.destroy
    redirect_to shops_url
  end

  private

  def shop_param
    params.require(:shop).permit(:fullname, :address, :city, :pincode, :mobile, :description, :gstin, :cityofreg, :cityofoper, :category, :companyname, :weburl, :email)
  end

  def find_shop
    @shop = Shop.find(params[:id])
  end
end
