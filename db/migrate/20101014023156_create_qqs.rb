class CreateQqs < ActiveRecord::Migration
  def self.up
    create_table :qqs do |t|
      t.string :url
      t.string :size

      t.timestamps
    end
  end

  def self.down
    drop_table :qqs
  end
end
