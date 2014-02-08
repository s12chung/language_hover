module ApplicationHelper
  def s(text, romanization)
    content_tag :span, text, data: { behavior: "tipsy", tipsy: romanization }
  end
end