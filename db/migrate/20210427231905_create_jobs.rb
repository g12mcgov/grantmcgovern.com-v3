class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :timerange
      t.string :logo

      t.timestamps
    end
  end
end
