module CommandDeck
  class Deck
    extend Forwardable

    def_delegator :@slides, :size, :count

    attr_accessor :slides, :slide, :slide_dir, 
                  :screen_height, :screen_width

    def initialize(args)
      @slide_dir = args[:slide_dir]
      @slide = args.fetch(:slide, Slide)
      @screen_width = args.fetch(:screen_width, 80)
      @screen_height = args.fetch(:screen_height, 24)
      @slides = []
      Dir.glob(slide_dir + "/*.mdown") do |slide_file|
        slides << slide.new(file: slide_file, 
                            height: screen_height, 
                            width: screen_width)
      end
    end

    def slide_with_number(number)
      slides.fetch(number - 1)
    end

  end
end
