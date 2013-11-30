class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.date :date_of_birth
      t.string :email_address
      t.string :password
      t.string :size
      t.string :body_shape
    end
  end
end
