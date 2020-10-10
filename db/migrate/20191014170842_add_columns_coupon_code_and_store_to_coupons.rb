class AddColumnsCouponCodeAndStoreToCoupons < ActiveRecord::Migration[5.0]
  def change
    add_column :coupons, :coupon_code, :integer
    add_column :coupons, :store, :string
  end
end
