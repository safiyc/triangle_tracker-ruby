require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @side1 = params.fetch('side1')
  @side2 = params.fetch('side2')
  @side3 = params.fetch('side3')
  your_triangle = Triangle.new(@side1, @side2, @side3)
  if your_triangle.triangle? == true
    @output_display = your_triangle.triangle?
  else
    @output_display = your_triangle.triangle?
  end
  erb(:output)
end
