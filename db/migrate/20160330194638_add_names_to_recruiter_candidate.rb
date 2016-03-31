class AddNamesToRecruiterCandidate < ActiveRecord::Migration
  def change
    change_table(:candidates) do |t|
      t.string :first_name, null: false, default: "John"
      t.string :last_name, null: false, default: "Candi"
    end
    change_table(:recruiters) do |t|
      t.string :first_name, null: false, default: "Bill"
      t.string :last_name, null: false, default: "Recruit"
    end
  end
end
