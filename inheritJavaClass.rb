
class Inheritancesample
    Dir[File.dirname(__FILE__) + '/lib/*.jar'].each {|file| require file }
    require 'java'
  def outputJavaString
    include_class("java.lang.String") { |pkg, name| "J" + name }
    s = JString.new("f")
    puts s
    puts File.dirname(__FILE__).to_s
  end
  def openseleniumrunURL
    include_class("webs.SignIn.personal_SignIn"){ |pkg, name| "J" + name }
    selenium=Jpersonal_SignIn.new()
    selenium.startSession("localhost", 4444, "*firefox", "http://www.webs.com")
    selenium.SignIn("/","Sign Up")
  end
end

i=Inheritancesample.new
i.outputJavaString
i.openseleniumrunURL