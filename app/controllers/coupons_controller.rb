class CouponsController < ApplicationController

    before_action :set_coupon, only: [:show]
    before_action :set_coupons, only: [:index]

    def index
    end

    def show
        @store = @coupon.store
        @code = @coupon.coupon_code
    end

    def new 
    end

    def create
        @coupon = Coupon.create(coupon_code: params ['coupon']['coupon_code'], store: params['coupon']['store'])
        redirect_to coupon_path(@coupon)
    end
    private

    def set_coupon
        @coupon = Coupon.find(params[:id])
    end

    def set_coupons
        @coupons = Coupon.all
    end

    
end