class CreateSideHustles < ActiveRecord::Migration
  def change
    create_table :side_hustles do |t|
      t.string :description

      t.timestamps
    end
  end
end
