class Posts < Grape::API
  
  version 'v1', :using => :path
  format :json
  
  resource 'posts' do
    get "/" do
	  coll = env.mongo.collection('users')
      coll.insert({"item" => "user11111", "py" => 1})
	  #coll.find({})
    end
    
  end
  
end