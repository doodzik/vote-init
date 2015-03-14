require 'vote_init/version'

# mokey patches Object class to check if init is defined
class Object
  def self.method_added(method_name)
    alias_method :initialize, :init if method_name == :init
  end
end
