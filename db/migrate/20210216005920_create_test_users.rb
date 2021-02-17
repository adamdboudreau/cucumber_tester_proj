class CreateTestUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :test_users do |t|
      t.string :guid
      t.string :email
      t.string :status
      t.string :desc

      t.timestamps
    end
  end
end
