Gem::Specification.new do |s|
  s.name     = 'train-whistle'
  s.version  = '0.1.0'
  s.summary  = 'Make a Rails app discoverable via mDNS/Bonjour'
  s.author   = 'Benjamin Ragheb'
  s.email    = 'ben@benzado.com'
  s.homepage = 'http://github.com/benzado/train-whistle'
  s.license  = 'MIT'
  s.add_runtime_dependency 'dnssd', '~> 2.0'
  s.description = <<-EOD
    Uses DNS Service Discovery (a.k.a. mDNS or Bonjour) to advertise a Rails
    server on the local network. This primarily exists to make it easy to
    connect to a development server from a remote host without having to look
    up your IP address.
  EOD
  s.files = %w[
    README.md
    LICENSE.txt
    lib/train-whistle.rb
    lib/train-whistle/railtie.rb
  ]
end
