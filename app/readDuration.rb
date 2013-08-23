#
# A simple word/time count plugin for Jekyll.
#
#  input         = The given content (a Liquid tag).
#  count_seconds = Returns the estiated minutes to read by dividing the word count by 270,
#                  which is how many words the average person reads per minute.
#                  http://en.wikipedia.org/wiki/Words_per_minute  
#
#  Usage:
#  {{ content | count_minutes }}
#
module Jekyll
  module ReadDuration

    def count_minutes(input)
      input / 250
    end

  end
end

Liquid::Template.register_filter(Jekyll::ReadDuration)