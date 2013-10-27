class AddFacebookColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :provider, :string
  	add_column :users, :uid, :string
  end
end


#user.provider = auth.provider
#user.uid = auth.uid
#user.name = auth.info.name
#user.oauth_token = auth.credentials.token
#user.oauth_expires_at = Time.at(auth.credentials.expires_at)
#user.save!