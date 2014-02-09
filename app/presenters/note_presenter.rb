module NotePresenter
  def to_html
    text.split(/(?:\r\n){2}/).map do |paragraph|
      content_tag :p do
        paragraph.split(/\r\n/).map do |sentence|
          text, romanization = sentence.split(" == ")
          content_tag :span, text, data: { behavior: "tipsy",
                                           tipsy: romanization }
        end.join(" ").html_safe
      end
    end.join("").html_safe
  end
end