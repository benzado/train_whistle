require 'dnssd'

module TrainWhistle
  class Railtie < Rails::Railtie
    config.after_initialize do |app|
      host, port = Rails::Server.new.options.values_at :Host, :Port

      if host != '0.0.0.0'
        # In Ruby 2.1, Socket::getifaddrs can be used to fix this.
        $stderr.puts "",
          "This version of Train Whistle doesn't support binding to specific",
          "network interfaces. We'll announce the service anyway, but clients",
          "will only be able to connect via #{host}.",
          ""
      end

      name        = app.class.name
      type        = '_http._tcp'
      domain      = nil
      text_record = DNSSD::TextRecord.new(
        'USER'      => ENV['USER'],
        'RAILS_ENV' => Rails.env
      )

      DNSSD.register(name, type, domain, port, text_record) do |r|
        $stderr.puts "Train Whistle: registered service '#{r.name}'"
      end
    end
  end
end
