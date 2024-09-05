class Colors
  attr_reader :colors

  def initialize
    @colors = %w[Red Blue Green Yellow Orange Purple]
  end

  def generate_secret_code
    @colors.sample(4)
  end

  def colors_from_input(input)
    user_colors = []
    input.downcase.split('').each do |char|
      case char
      when 'y'
        user_colors.push('Yellow')
      when 'r'
        user_colors.push('Red')
      when 'g'
        user_colors.push('Green')
      when 'b'
        user_colors.push('Blue')
      when 'o'
        user_colors.push('Orange')
      when 'p'
        user_colors.push('Purple')
      end
    end
    user_colors
  end
end


