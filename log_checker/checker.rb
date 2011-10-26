if __FILE__ == $0
  files = Dir.entries("Log")
  files = files.find_all{|file| file =~ /EmpiFis_(.*).LOG/}
  files.each do |file|
    f = File.new("Log/" + file)
    contents = f.read
    if not (contents.include?("SetCredit(0,Dega") and 
            contents.include?("SetCredit(1,Banko") and
            contents.include?("SetCredit(2,Tech") and
            contents.include?("SetCredit(3,Kiti"))
      puts file
    end
    f.close
  end
end
