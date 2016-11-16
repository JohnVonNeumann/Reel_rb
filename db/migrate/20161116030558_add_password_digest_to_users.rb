class AddPasswordDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password_digest, :string
    # after using the has_secure_password method in user.rb we then create this
    # migration using the cmd "rails generate migration add_password_digest_to_users
    # password_digest:string", we then perform a rails db:migrate to push this
    # further on and into the complete schema
  end
end
