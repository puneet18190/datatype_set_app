require 'test_helper'

class SettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create new numeric setting" do
  	@setting = Setting.create(:name => "rails_version", :value => "4")
  	Setting.where(:name => "rails_version").first.value == ("4")
  end

   test "create new string setting" do
  	@setting = Setting.create(:name => "Email", :value => "admin@test.com")
  	Setting.where(:name => "Email").first.value == ("admin@test.com")
  end

  test "create new float setting" do
  	@setting = Setting.create(:name => "Version", :value => "1.1")
  	Setting.where(:name => "Version").first.value == ("1.1")
  end

  test "create new boolean setting" do
  	@setting = Setting.create(:name => "flag", :value => "true")
  	Setting.where(:name => "flag").first.value == ("true")
  end
end
