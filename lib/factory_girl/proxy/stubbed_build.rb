class Factory
  class Proxy #:nodoc:
    class StubbedBuild < Build
      def result
        @instance.stubs(:new_record?).returns false
        @instance.stubs(:id).returns rand(1000)
        @instance
      end
    end
  end
end
