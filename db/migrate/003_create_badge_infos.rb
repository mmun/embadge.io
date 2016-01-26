class CreateBadgeInfos < ActiveRecord::Migration
  def self.up
    create_table :badge_infos do |t|
      t.references :badge
      t.integer :created_by
      t.boolean :is_current
      t.string :version_start
      t.string :version_end
      t.string :version_range
      t.timestamps
    end
  end

  def self.down
    drop_table :badge_infos
  end
end