require "./spec_helper"

describe ZhenXiang do
  # TODO: Write tests

  it "works" do
    true.should eq(true)
  end

  it "scanning" do
    ZhenXiang.scanning "_res"
  end

  it "read template" do
    tpl = ZhenXiang.read_tpl "_res/zhenxiang"
  end

  it "make" do
    tpl = ZhenXiang::Template.new "_res/zhenxiang/template.mp4", "_res/zhenxiang/template.ass", "王境泽", [] of String
    subtitles = [
      "我王竞泽就是饿死",
      "死外边 从这儿跳下去",
      "不会吃你们一点东西",
      "真香",
    ]
    tpl.output(subtitles, :mp4, "outputs")
    tpl.output(subtitles, :gif, "outputs")
  end
end
