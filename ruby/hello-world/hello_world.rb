class HelloWorld
  def self.hello opt = {name: "World"}
    "Hello, #{opt[:name]}!"
  end
end