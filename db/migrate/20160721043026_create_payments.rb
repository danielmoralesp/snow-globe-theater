#---
# Excerpted from "Take My Money",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/nrwebpay for more book information.
#---
class CreatePayments < ActiveRecord::Migration[5.0]

  def change
    create_table :payments do |t|
      t.references :user, foreign_key: true
      t.monetize :price
      t.integer :status
      t.string :reference
      t.string :payment_method
      t.string :response_id
      t.json :full_response

      t.timestamps
    end

    #add_index :paymets, :reference
  end

end
