class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.references :shirt, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
