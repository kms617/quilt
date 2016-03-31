class InitialSchema < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false

      t.timestamps null: false
    end

    create_table :recruiters do |t|
      t.timestamps null: false
    end

    create_table :appointments do |t|
      t.belongs_to :timeslot, index: true
      t.belongs_to :recruiter, index: true
      t.belongs_to :candidate, index: true

      t.timestamps null: false
    end
  end
end
