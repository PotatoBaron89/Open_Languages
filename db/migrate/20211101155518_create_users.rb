class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :display_name
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
