# frozen_string_literal: true

module PhlexUI
  class Popover < Base
    def initialize(options: {}, **attrs)
      @options = options
      super(**attrs)
    end

    def template(&block)
      div(**attrs, &block)
    end

    private

    def default_attrs
      {
        data: {
          controller: "ui-popover",
          ui_popover_options_value: @options.to_json
        }
      }
    end
  end
end
