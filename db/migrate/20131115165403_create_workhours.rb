class CreateWorkhours < ActiveRecord::Migration
  def change
    create_table :workhours do |t|
      t.string :working_day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
