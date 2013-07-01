config['mongo'] = EventMachine::Synchrony::ConnectionPool.new(size: 20) do
  #conn = EM::Mongo::Connection.new('172.16.0.9', 27017, 1, {:reconnect_in => 1})
  #conn = EM::Mongo::Connection.new('172.17.10.137', 27017, 1, {:reconnect_in => 1})
  conn = EM::Mongo::Connection.new('172.17.10.215', 27017, 1, {:reconnect_in => 1})
  db = conn.db('admin')
  #db.authenticate('root', '123456')
  db
end

