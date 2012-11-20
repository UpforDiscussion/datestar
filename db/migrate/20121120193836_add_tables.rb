class AddTables < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :name
  		t.string :password_digest
  		t.string :tagline
  		t.integer :main_pic_id
  		t.integer :age
  		t.string :gender
  		t.string :city
  		t.string :state
  		t.string :ethnicity
  		t.text :description
  		t.timestamps
  	end
  	create_table :photos do |t|
   		t.string :url
   		t.string :user_id
  		t.timestamps
  	end
  	create_table :messages do |t|
  		t.integer :send_user_id
  		t.integer :user_id
  		t.text :message
  		t.timestamps
  	end
   	create_table :questions do |t|
   		t.text :question
   		t.integer :user_id
  		t.timestamps
  	end
  	create_table :answers do |t|
   		t.integer :question_id # which question
   		t.string :answer   # one of the answers
   		t.integer :correct # real answer or fake answer
  		t.timestamps
  	end
  	create_table :matches do |t|
  		t.integer :sender_id  # user that wants to send the email / user foreign keys
  		t.integer :receiver_id # use foreign keys
  		t.integer :match
  		t.timestamps
  	end
  end
end
