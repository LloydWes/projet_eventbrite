class AddAdminToEvents < ActiveRecord::Migration[5.2]
  def change

    
    # add_column :events, :admin_id, :integer
    add_reference :events, :admin#, class_name: 'User'

    
    # add_foreign_key :events, :admin, class_name: 'User'
    
    # add_reference :events, :user, column: :admin_id, foreign_key: true

    # add_reference :events, :admin, references: :users, index: true
    # add_foreign_key :events, :users, column: :admin_id

    # add_foreign_key :events, :users, column: :admin_id
    # add_reference :events, :user, foreign_key: true

    # add_column :reservations, :guest_id, :integer
    # add_column :listings, :admin_id, :integer
    # add_reference :reservations, :listing, foreign_key: true
    # add_reference :listings, :city, foreign_key: true
  end
end
