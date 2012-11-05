class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :to
      t.text :from
      t.text :subject
      t.text :text

      t.timestamps
    end
  end
end
