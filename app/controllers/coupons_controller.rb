class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        # byebug
        @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

        if @coupon.save
            redirect_to @coupon
         else
            redirect_to new_coupon
         end
    end

    def new
        @coupon = Coupon.new
    end

end