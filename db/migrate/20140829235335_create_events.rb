class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :emitted_at
      t.datetime :recorded_at
      t.text :payload
      t.string :user_id
      t.string :user_agent
      t.string :source
      t.string :kind
    end
  end
end
