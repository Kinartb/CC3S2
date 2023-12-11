class OpenClosed
  @@check_method = false

  def self.meths(m)
    m.instance_methods + m.private_instance_methods
  end

  def self.check_method
    @@check_method
  end

  def self.check_method=(value)
    @@check_method = value
  end

  def self.include(*mods)
    check_and_override(mods)
    singleton_class.alias_method :prepend, :include
  end

  def self.extend(*mods)
    check_and_override(mods)
    singleton_class.alias_method :extend, :include
  end

  def self.method_added(method)
    return if @@check_method

    if method.to_s.start_with?("__") && !method_defined?(method)
      alias_name = method.to_s.sub(/^__/, '').to_sym
      alias_method(alias_name, method)
    elsif method_defined?(:"__#{method}")
      alias_name = :"__#{method}"
      alias_method(method, alias_name)
    end
  end

  private

  def self.check_and_override(mods)
    mods.each do |mod|
      if mod.is_a?(Module)
        if (meths(self) & meths(mod)).any?
          raise "Error: La clase no está cerrada para la modificación."
        end
      end
    end
  end
end
