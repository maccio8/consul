class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :subject
      t.string :to
      t.string :from
      t.text :body

      t.timestamps null: false
    end
  end
end
