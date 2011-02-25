module Vigor
  class DSL
    def initialize
      @comments = true
      @vimrc = []
    end

    def disable_comments!
      @comments = false
    end

    def set_gui_color(action, colors)
      validate_arguments :background, :text, colors
      comment "Colorizing #{action} in the GUI" 
      output ":highlight Search guibg=#{colors[:background]} guifg=#{colors[:text]}"
    end

    protected
    
      def comment(text)
        return unless @comments
        @vimrc << text
      end

      def output(text)
        @vimrc << text
        @vimrc << "\n"
        text
      end

    private

      def validate_arguments(*args)
        hash = args.pop
        args.each do |arg|
          raise ArgumentError.new("Missing :#{arg} in #{hash.inspect}") unless hash[arg]
        end
      end
  end
end
