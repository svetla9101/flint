class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text   :message
      t.timestamps
    end
  end
end
