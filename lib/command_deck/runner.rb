module CommandDeck
  class Runner

    attr_accessor :deck

    def initialize(args)
      @current = args.fetch(:start, 1)
      p @current
      @deck = CommandDeck::Deck.new(slide_dir: args[:slide_dir],
                                    screen_width: args.fetch(:screen_width, 80),
                                    screen_height: args.fetch(:screen_height, 24))
    end

    def read_char 
      begin 
        old_state = `stty -g`
        system "stty  raw -echo"
        c = $stdin.getc.chr
      rescue => ex
        p ex
      ensure 
        system "stty #{old_state}"
      end
      c
    end

    def start
      display_slide(@current)
      loop do
        case read_char
        when "q"
          break
        when "n"
          @current = @current + 1 unless deck.count <= @current
          display_slide(@current)
        when "p"
          @current = @current - 1 unless @current <= 1
          display_slide(@current)
        else
          next
        end
      end
    end

    def display_slide(number)
      system "clear"
      puts deck.slide_with_number(number).content
    end
  end
end
