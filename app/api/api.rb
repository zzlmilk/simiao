class API < Grape::API
  prefix 'api'  
#  version "v1"


  mount Temple::Ping   #测试api
  
  
end

