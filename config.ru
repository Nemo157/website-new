use Rack::Static,
  :urls => ["/static"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/static/index.html', File::RDONLY)
  ]
}
