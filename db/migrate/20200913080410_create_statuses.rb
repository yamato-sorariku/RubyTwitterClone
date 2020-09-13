class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
