class RemovesUnusedFieldsCandidates < ActiveRecord::Migration
  def up
    remove_column :candidates, :education
    remove_column :candidates, :languages
    remove_column :candidates, :background_check
    remove_column :candidates, :drug_screen
    remove_column :candidates, :work_type
    remove_column :candidates, :shifts
  end

  def down
    add_column :candidates, :education, :string
    add_column :candidates, :languages, :string
    add_column :candidates, :background_check, :boolean
    add_column :candidates, :drug_screen, :boolean
    add_column :candidates, :work_type, :string
    add_column :candidates, :shifts, :string
  end
end
