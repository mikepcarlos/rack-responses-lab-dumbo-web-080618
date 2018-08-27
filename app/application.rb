class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(1..24)

    #resp.write "#{time.hour}\n"

    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
