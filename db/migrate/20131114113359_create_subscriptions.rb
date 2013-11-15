class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.belongs_to :plan
      t.string :email
      t.timestamps
      t.string :stripe_customer_token
    end
  end
end
