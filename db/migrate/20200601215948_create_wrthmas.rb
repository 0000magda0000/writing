class CreateWrthmas < ActiveRecord::Migration[6.0]
  def change
    create_table :wrthmas do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
