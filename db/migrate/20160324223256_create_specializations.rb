class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.timestamps
      t.belongs_to :specialty, index: true
      t.belongs_to :candidate, index: true
    end
  end
end
