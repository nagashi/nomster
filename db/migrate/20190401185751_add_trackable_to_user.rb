class AddTrackableToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.trackable
    end
  end
end

