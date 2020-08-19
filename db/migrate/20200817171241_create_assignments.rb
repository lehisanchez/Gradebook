class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string     :name
      t.text       :description
      t.references :course, null: false, foreign_key: true
      t.integer    :points

      t.timestamps
    end
  end
end
