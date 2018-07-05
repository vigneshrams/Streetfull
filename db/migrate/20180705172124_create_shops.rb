class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :fullname
      t.string :email
      t.text :address
      t.string :city
      t.string :pincode
      t.string :mobile
      t.string :companyname
      t.text :description
      t.string :gstin
      t.string :cityofreg
      t.string :cityofoper
      t.string :weburl
      t.string :category

      t.timestamps
    end
  end
end
