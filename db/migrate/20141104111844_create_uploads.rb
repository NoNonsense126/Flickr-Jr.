class CreateUploads < ActiveRecord::Migration
  def change
  	create_table :uploads do |t|
  		t.string :captions
  		t.string :file_name
  		t.integer :album_id

  		t.timestamps
  	end
  end
end
