class EncodingController < ActionController::Base
  def good
    Emoji.create!(text: "a")
    head status: 200
  end

  def bad
    ActiveRecord::ConnectionAdapters::SQLServerAdapter.use_output_inserted = true
    Emoji.create!(text: "😄")
    head status: 200
  end

  def really_bad
    ActiveRecord::ConnectionAdapters::SQLServerAdapter.use_output_inserted = false
    Emoji.create!(text: "😄")
    head status: 200
  end
end
