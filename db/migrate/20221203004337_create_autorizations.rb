class CreateAutorizations < ActiveRecord::Migration[7.0]
  def change
    create_table :autorizations do |t|
      t.string :token_key

      t.timestamps
    end
  end
end
