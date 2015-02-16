class CreateEmojis < ActiveRecord::Migration
  def change
    create_table :emojis do |t|
      t.string :text, default: "", null: false
    end
  end
end
