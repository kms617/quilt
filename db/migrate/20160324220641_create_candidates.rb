class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :zip, default: '32256'
      t.string :travel_limit
      t.string :status, default: 'New Lead'
      t.string :source, default: 'Walk In'
      t.date :date_available
      t.string :ethnicity
      t.string :gender
      t.string :veteran
      t.string :disability
      t.boolean :eligible, default: true
      t.integer :category_id
    end
  end
end
