class CreateHowtolists < ActiveRecord::Migration
  def change
    create_table :howtolists do |t|
      t.string :title

      t.timestamps
    end
  end
end
