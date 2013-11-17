class CreateExampleTwos < ActiveRecord::Migration
  def change
    create_table :example_twos do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
