class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :zipcode, default: '32256'
      t.string :radius
      t.string :status, default: 'Walk In'
      t.date :date_available
      t.string :race
      t.string :gender
      t.string :veteran_status
      t.string :disability_status
      t.boolean :eligible, default: true
      t.integer :industry_id
    end
  end
end
