require 'spec_helper'

describe VoteInit do
  it 'has a version number' do
    expect(VoteInit::VERSION).not_to be nil
  end

  it 'uses init as an alias for initialize ' do
    # class that tests init
    class TestClass
      attr_reader :value
      def init
        @value = true
      end
    end
    expect(TestClass.new.value).to be true
    Object.send(:remove_const, :TestClass)
  end

  it 'initialize is still useable' do
    # class that test initialize
    class TestClass
      attr_reader :value
      def initialize
        @value = true
      end
    end
    expect(TestClass.new.value).to be true
    Object.send(:remove_const, :TestClass)
  end
end
