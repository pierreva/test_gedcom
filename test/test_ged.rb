require 'rubygems'
require "test/unit"
require "gedcom"
# ruby-1.8.7-p334
class TestGedcom < Test::Unit::TestCase
  def test_ged
    g = Gedcom.file("./test_data/brun_georges.ged", "r:UTF-8")
    indi = g.transmissions[0].find(:individual,"I14")
    assert_equal([[:individual, "I14"]], indi.individual_ref)
    assert_equal(["NAME"], indi.name_record[0].event_type)
    assert_equal([["Louise", "/THEVENET/"]], indi.name_record[0].event_status)
  end
end