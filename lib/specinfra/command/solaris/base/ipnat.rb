class Specinfra::Command::Solaris::Base::Ipnat < Specinfra::Command::Base::Ipnat
  def check_has_rule(rule)
    regexp = "^#{rule}$"
    "ipnat -l 2> /dev/null | grep -- #{escape(regexp)}"
  end
end






