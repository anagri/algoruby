def validations
  valid = ARGV.extract_inputs.all? do |argument|
    argument =~ /\d+/ # any of the argument is not a number
  end

  unless valid
    $stderr.puts 'input is invalid'
    exit
  end
end

class Array
  def extract_inputs
    reject { |input| input =~ /^--/ }
  end
end

def debug?
  ARGV.include?('--debug')
end

