require 'erb'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    [ERB.new(File.read('index.html')).result]
  ]
}
