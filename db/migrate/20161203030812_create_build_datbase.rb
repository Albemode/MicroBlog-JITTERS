class CreateBuildDatbase < ActiveRecord::Migration[5.0]
  def change
  	
  	create_table 'users' do |t|
  		t.string :username, limit: 10
  		t.string :password
  		t.string :email
  end
	  
	  create_table 'posts' do |t|
	  	t.integer :user_id
	  	t.string :title
	  	t.text :content
	  end
	  
	  create_table 'comments' do |t|
	  	t.integer :user_id
	  	t.integer :post_id
	  	t.string :content
	  end
  end
end
