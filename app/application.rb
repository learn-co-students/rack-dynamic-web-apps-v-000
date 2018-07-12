class Application

  def call(env)
    # can code response direcctly as a hash
    resp = Rack::Response.new
    resp.write "Hello, World"
    resp.finish
  end

end
