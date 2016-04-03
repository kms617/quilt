  class AddNamesToRecruiter < ActiveRecord::Migration
  def change
    change_table(:recruiters) do |t|
      t.string :first_name, null: false, default: "Bill"
      t.string :last_name, null: false, default: "Recruit"
    end
  end
end
