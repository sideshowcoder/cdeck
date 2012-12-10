module CommandDeck
  class Slide

    attr_accessor :height, :width, :text

    def initialize(args)
      @width = args.fetch(:width, 80)
      @height = args.fetch(:height, 24)
      @text = args.fetch(:text)
    end

    def content
      _justify_text(justify_lines)
    end

    def url
    end

    def lines
      text.lines.to_a
    end

    def max_text_width
      text_width = lines.sort_by(&:length).last.length 
      text_width < width ? text_width : width
    end

    def max_text_height
      lines.length < height ? lines.length : height
    end

    def justify_lines
      lines.collect do |line| 
        spaces =  " " * ((width - max_text_width) / 2)
        spaces + line
      end.join("")
    end

    def _justify_text(text)
      empty_lines = "\n" * ((height - max_text_height) / 2)
      empty_lines + text + empty_lines
    end

  end
end
