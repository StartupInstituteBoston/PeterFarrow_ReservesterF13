class CreateMytempdemos < ActiveRecord::Migration
  def change
    create_table :mytempdemos do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
