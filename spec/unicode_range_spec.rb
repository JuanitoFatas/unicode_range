RSpec.describe UnicodeRange do
  it "has a version number" do
    expect(UnicodeRange::VERSION).not_to be nil
  end

  it "#expand returns a UnicodeRange::Collection" do
    result = UnicodeRange.new(from: "FF10", to: "FF19").expand

    expect(result).to be_a UnicodeRange::Collection
  end

  it "#expand to_a returns all unicodes in decimal" do
    result = UnicodeRange.new(from: "FF10", to: "FF19").expand.to_a

    expect(result).to eq [65296, 65297, 65298, 65299, 65300, 65301, 65302, 65303, 65304, 65305]
  end

  it "#expand returns all unicodes given range except reserved words" do
    reserved_words = %w(FF3B FF3C FF3D FF3E FF3F FF40)

    result = UnicodeRange.new(from: "FF21", to: "FF5A").
      expand(except: reserved_words).to_s

    expect(result).to eq "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ"
  end
end
