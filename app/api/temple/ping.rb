module Temple
  class Ping <Grape::API
    format :json
    desc 'Returns pong.'
    get :ping do
      {ping: params[:pong] || 'pong'}
    end

    desc 'Creates a spline that can be reticulated.'
    resource :spline do
      post do
        { reticulated: params[:reticulated] }
      
    end
  end

     desc 'Raises an exception.'
    get :raise do
      fail 'Unexpected error.'
    end

  http_basic do |username, password|
      username == 'username' && password == 'password'
    end
    resource :protected do
      desc 'Returns pong if username=username and password=password.'
      get :ping do
        { ping: 'pong' }
      end
    end
  end
end