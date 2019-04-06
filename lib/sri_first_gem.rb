require "sri_first_gem/version"

module SriFirstGem

  class Emoji
    extend ActionView::Helpers::TagHelper

    class << self

      def self.emoji_hash_dec
        { 'winking_tongue' => '&#128540',
          'grinning_face' => '&#128512'
        }
      end

      emoji_hash_dec.each do |key, value|
        define_method :"#{key}" do
          content_tag(:span, value, { class: "emoji-#{key.dasherize}" }, false)
        end
      end
    end
  end
end
