module Octopolo
  class SemverTagScrubber

    def self.scrub_prefix(tag)
      scrub_via_regexp(tag, /\A[a-z]*/i)
    end

    def self.scrub_suffix(tag)
      scrub_via_regexp(tag, /[a-z]*\z/i)
    end

    private

    def self.scrub_via_regexp(tag, regexp)
      result = tag.match(regexp)[0]
      tag.gsub!(regexp, '')
      result
    end

  end
end
