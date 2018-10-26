# frozen_string_literal: true

module ApplicationHelper
  def page_heading(action, subject, subtitle: nil)
    render "/@shared/page_heading", action: action, subject: subject, subtitle: subtitle
  end

  def breadcrumbs
    @breadcrumbs = yield
  end

  def pseudo_row_divider
    @pseudo_row_divider ||= render("/@shared/forms/pseudo_row_divider")
  end

  def classes(options = {})
    list = []
    options.each { |k, v| list << k if v }
    list.join " "
  end
end
