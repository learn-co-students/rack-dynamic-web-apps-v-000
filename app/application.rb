class Application

  def call(env)

    resp = Rack::Response.new #basic startup to receive the clients request

    num_1 = Kernel.rand(1..20)   #The Kernel module is included by class Object, so its methods are available in every Ruby object.
    num_2 = Kernel.rand(1..20)   # aka Kernel has nested methods within the module, this case we are using random
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"       #lets show the user what numbers they received
    resp.write "#{num_2}\n"       #remember, resp.write is used rather than puts
    resp.write "#{num_3}\n"       #The \ns are just a special character which gets rendered by the browser as a new line.

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"   #in rack we use resp.write to respond to the clients request rather than puts
    else
      resp.write "You Lose"
    end

    resp.finish    #basic finish to rack code

  end

end

#to run this code, and see a mockup in a client browser, type "rackup config.ru" in terminal. Which will yield
    #[2017-11-13 07:38:34] INFO  WEBrick 1.3.1
    #[2017-11-13 07:38:34] INFO  ruby 2.3.1 (2016-04-26) [x86_64-linux]
    #[2017-11-13 07:38:34] INFO  WEBrick::HTTPServer#start: pid=20804 port=9292
  #to see your code in the client, take port and insert into "http://localhost:9292/" and plug that into your browser

#Notice that we only changed the puts statements into resp.write statements. That's it! Web servers are just big ruby apps that respond to the user in an HTTP response rather than via puts statements. Let's give the user a bit more information about what numbers they received by writing the numbers to the response as well. The #write method can be called many times to build up the full response. The response isn't sent back to the user until #finish is called.
