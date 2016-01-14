require 'rspec'

shared_examples "a Jenkins build slave" do
  describe user('jenkins') do
    it { should exist }
    it { should have_home_directory '/home/jenkins' }
  end

  describe file('/home/jenkins/.ssh/authorized_keys') do
    it { should be_file }
  end

  describe file('/home/jenkins/.docker') do
    it { should be_directory }
  end

  describe file('/home/jenkins/.docker/config.json') do
    it { should be_file }
  end
end
