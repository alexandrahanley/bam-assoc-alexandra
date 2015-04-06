class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :user, index: true
      t.integer :doctor_id
      t.integer :user_id
      t.string :doctor
      t.datetime :date
    end
    add_foreign_key :appointments, :doctors
    add_foreign_key :appointments, :users
  end
end
