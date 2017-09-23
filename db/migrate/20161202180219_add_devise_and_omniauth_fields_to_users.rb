class AddDeviseAndOmniauthFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      # Omniauthable
      t.string :uid
      t.string :provider

      # Database authenticatable
      t.string :encrypted_password

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
    end
  end
end
