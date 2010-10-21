#TODO : Factorization

if defined?(ActiveSupport::TestCase)
  module ActiveSupport
    class TestCase < ::Test::Unit::TestCase
      alias_method :original_run, :run

      def run(result,&block)
        send(@@___before_tests[method_name]) if @@___before_tests[method_name]
        original_run(result,&block)
      end
      
      class << self
        @@___before_tests ||= {}
        
        def before_test test, proc
          @@___before_tests.merge!({test.to_s => proc})
        end
      end
    end
  end
else
  module Test
    module Unit
      class TestCase
        alias_method :original_run, :run

        def run(result,&block)
          send(@@___before_tests[method_name]) if @@___before_tests[method_name]
          original_run(result,&block)
        end

        class << self
          @@___before_tests ||= {}
          
          def before_test test, proc
            @@___before_tests.merge!({test.to_s => proc})
          end
        end
      end
    end
  end
end  
