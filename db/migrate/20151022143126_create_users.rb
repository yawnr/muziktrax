class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, presence: true, unique: true
      t.string :password_digest, presence: true, unique: true
      t.string :session_token, index: true

      t.timestamps 
    end
  end
end
