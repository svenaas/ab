require 'rack'

app = Proc.new do |env|
    [200, { "Content-Type" => "text/html" }, ["Hello, world. I'm A/B!"]]
end

run app
