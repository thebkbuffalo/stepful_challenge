class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :student, null: true, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.boolean :booked, default: false

      t.timestamps
    end
  end
end
