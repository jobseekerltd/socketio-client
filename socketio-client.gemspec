# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "socketio-client"
  s.version     = "0.0.4"
  s.authors     = ["Lyon"]
  s.email       = ["lyon@delorum.com"]
  s.homepage    = "http://github.com/lyondhill/socket.io-ruby-client"
  s.summary     = %q{A basic Socket.io client implememtation written for ruby}
  s.description = %q{uses a very simple web socket}

  s.rubyforge_project = "socketio-client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_dependency 'rest-client', '~> 2.0.1'
  s.add_dependency 'byebug'
end
