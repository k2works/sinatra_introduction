require 'sinatra'
require 'sinatra/reloader'

get '/index' do
  erb :index
end

__END__

@@index

<!DOCTYPE html>
  <html>
    <heah>
      <meta charset="UTF-8">
      <title>Inline template</title>
    </head>
  <body>
    <h1>Worked!</h1>
  </body>
</html>
