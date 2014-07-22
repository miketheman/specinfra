class Specinfra::Command::Ubuntu::Base::Service < Specinfra::Command::Debian::Base::Service
  def check_is_running(service)
    "service #{escape(service)} status && service #{escape(service)} status | grep 'running'"
  end
end
