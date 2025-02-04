class CreateSalespeople < ActiveRecord::Migration[7.1]
  def change
    create_table :salespeople do |t|
      #tsting "id"
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "phone"



      t.timestamps
    end
  end
end
