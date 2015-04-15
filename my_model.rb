require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/my_app_db.db")

class MyApp
#the properties takes place of the attr_accessors
  include DataMapper::Resource
  property :id, Serial
  property :thing, String
  property :created_at, DateTime
  

end

DataMapper.finalize
MyApp.auto_upgrade!
