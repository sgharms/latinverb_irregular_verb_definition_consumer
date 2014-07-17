class IrregularLookupTest < Minitest::Test
  def test_succesful_lookup
    consumer = Linguistics::Latin::Verb::LatinVerb::IrregularVerbDefinitionConsumer.new("sum esse fuī futūrus")
    assert_equal "esse", consumer.structure["infinitives"]["data"]["present_active_infinitive"]
  end
end
