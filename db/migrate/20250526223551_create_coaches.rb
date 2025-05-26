class CreateCoaches < ActiveRecord::Migration[7.1]
  def change
    create_table :coaches do |t|
      t.string :first_name, null: false, index: true
      t.string :last_name, null: false, index: true
      t.string :email, null: false, index: {unique: true}
      t.string :phone_number, null: false, index: {unique: true}

      t.timestamps
    end
  end
end
