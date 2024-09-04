class Colors
  attr_reader :colors

  def initialize
    @colors = %w[Red Blue Green Yellow Orange Purple]
  end

  def generate_secret_code
    @secret_code = @colors.sample(4)
  end
end

