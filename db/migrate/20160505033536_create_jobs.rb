class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :embed_code

      t.timestamps null: false
    end
  end
end
