config['mongo'] = EventMachine::Synchrony::ConnectionPool.new(size: 20) do
  conn = EM::Mongo::Connection.new('172.16.0.9', 27017, 1, {:reconnect_in => 1})
  db = conn.db('test')
  # conn = EM::Mongo::Connection.new('172.17.10.218', 30000, 1, {:reconnect_in => 1})
  # db = conn.db('admin')
  # db.authenticate('root', '123456')
  db
end

