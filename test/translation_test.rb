require File.expand_path(File.dirname(__FILE__) + '/setup')
class TranslationTest < Test::Unit::TestCase
  context "I18n with local set to DE" do 
    setup do
      I18n.default_locale = "de"
    end
    should "translate" do
      assert_equal "Bitte überprüfen Sie die folgenden Felder:" , I18n.t(  :body, :scope => "activerecord.errors.template")
      assert_equal "Bitte überprüfen Sie die folgenden Felder:" , I18n.t(  :"activerecord.errors.template.body")
    end
  end
end

