require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Time" do
  
  describe '#before?' do
    
    it 'should return true when the instance time is earlier than the parameter' do
      Time.now.before?(Time.now + 10).should be_true
    end
    
    it 'should return false when the instance time is later than the parameter' do
      Time.now.before?(Time.now - 10).should be_false
    end
    
  end
  
  describe '#after?' do
    
    it 'should return true when the instance time is later than the parameter' do
      Time.now.after?(Time.now - 10).should be_true
    end
    
    it 'should return false when the instance time is earlier than the parameter' do
      Time.now.after?(Time.now + 10).should be_false
    end
    
  end
  
  describe '#within_last?' do
    
    it 'should return true if the instance time is within now and given seconds ago' do
      (Time.now - 10).within_last?(60).should be_true
    end
    
    it 'should return false if the instance time is not within now and given seconds ago' do
      (Time.now + 10).within_last?(60).should be_false
    end
    
  end
  
  describe '#within_coming?' do
    
    it 'should return true if the instance time is within now and now + given seconds' do
      (Time.now + 10).within_coming?(60).should be_true
    end
    
    it 'should return false if the instance time is not within now and now + given seconds' do
      (Time.now - 10).within_coming?(60).should be_false
    end
    
  end
  
end
