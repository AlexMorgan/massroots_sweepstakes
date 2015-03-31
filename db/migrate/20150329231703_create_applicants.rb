class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :fullname, :email, :ip_address, :user_agent, :referred_url
      t.datetime :verified_at

      t.timestamps
    end
    add_index :applicants, :email
  end
end
