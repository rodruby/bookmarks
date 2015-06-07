class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author 
      t.string :comment 
      t.references :book, index: true
      t.belongs_to :book, index: true 

      t.timestamps
    end
  end
end
