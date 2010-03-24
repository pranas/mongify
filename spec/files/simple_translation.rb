sql_config do |s|
  s.adaptor   :mysql
  s.host      "localhost"
  s.database  "my_database"
end

mongodb_config do |m|
  m.host       '127.0.0.1'
  m.collection 'my_collection'
end

table "accounts"

table "users" 

table "user_accounts", :embed_in => :users, :on => :user_id do |t|
  t.column  "account_id", :references => :account
end