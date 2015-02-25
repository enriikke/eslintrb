require "execjs"
require "multi_json"

module Eslintrb
  class Linter
    ESLINT_PATH = File.expand_path("../../../js/eslint.js", __FILE__)

    def initialize
      eslint_source = File.open(ESLINT_PATH, "r:UTF-8").read
      @context = ExecJS.compile(eslint_source)
    end

    def lint(source)
      js = "return ESLINT.verify(#{MultiJson.dump(source)});"
      @context.exec js
    end
  end
end
