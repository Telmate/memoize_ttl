require "memoize_ttl/version"

module MemoizeTtl

  def memoize_ttl(name, ttl_seconds, &block)
    class_variable_set("@@block_#{name}", block)
    module_eval <<-EOS, __FILE__, __LINE__ + 1
      def #{name}
        if !@#{name}.nil? && @#{name}_expire_at > Time.now
          return @#{name}
        end
        @#{name} = instance_exec(&@@block_#{name})
        @#{name}_expire_at = Time.now + #{ttl_seconds}
        @#{name}
      end
    EOS
  end

end
