class ChangeLocationToStore < ActiveRecord::Migration[5.0]
  def change
    rename_column :coupons, :location, :store
  end
end
