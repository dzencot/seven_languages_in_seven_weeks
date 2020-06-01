class Array
  def one
    self.first
  end
end

class ActsAsCsv
  def self.acts_as_csv

    define_method 'read' do
      file = File.new(self.class.to_s.downcase + '.txt')
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end

    define_method 'headers' do
      @headers
    end

    define_method 'csv_contents' do
      @result
    end

    define_method 'initialize' do
      @result = []
      read
    end

    define_method 'each' do |&block|
      @result.each {|r| block.call r}
    end
  # def visit_all(&block)
  #   visit &block
  #   @children.each { |child| child.visit_all &block } if @children
  # end
  end
end

class RubyCsv < ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
m.each {|row| puts row.one}
