class CreateMarksheets < ActiveRecord::Migration[5.2]
  def change
    create_table :marksheets do |t|
      t.string :name
      t.string :subject_one
      t.string :subject_two
      t.string :subject_three
      t.string :subject_four
      t.string :subject_five

      t.timestamps
    end
  end
end
