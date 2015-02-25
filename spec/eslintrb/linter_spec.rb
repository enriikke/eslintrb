require "spec_helper"

RSpec.describe Eslintrb::Linter do
  subject(:linter) { described_class.new }

  describe "#lint" do
    it "has an ESLINT object" do
      result = linter.lint("")
      expect(result).to_not be_nil
    end
  end
end
