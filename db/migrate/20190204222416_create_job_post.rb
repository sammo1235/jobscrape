class CreateJobPost < ActiveRecord::Migration[5.1]
  def change
    create_table :job_posts do |t|
      t.text :text
      t.integer :search_id
    end
  end
end
