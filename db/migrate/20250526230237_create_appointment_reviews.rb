class CreateAppointmentReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :appointment_reviews do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :notes

      t.timestamps
    end
  end
end
