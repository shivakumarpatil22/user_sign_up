class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :gender
      t.string :company
      t.string :skills

      t.timestamps
    end
  end
end