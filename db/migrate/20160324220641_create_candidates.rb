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
      t.string :education
      t.string :languages
      t.boolean :background_check
      t.boolean :drug_screen
      t.string :work_type
      t.string :shifts
      t.string :category
      t.boolean :eligible, default: true
    end
  end
end
