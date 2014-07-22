class Specinfra::Command::Freebsd::Base::Port < Specinfra::Command::Base::Port
  def check_is_listening(port, options={})
    regexp = ":#{port} "
    "sockstat -46l -p #{port} | grep -- #{escape(regexp)}"
  end
end
