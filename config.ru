require 'rack'

# Monkeypatch to make sure Array#sample exists (cough, cough Ruby 1.8)
unless [].respond_to?(:sample)
  class Array
    alias_method :sample, :choice
  end
end

app = Proc.new do |env|
  req = Rack::Request.new(env)
  dest = req.params.values.sample
  [ 302, { "Location" => dest }, [] ]
end

run app
