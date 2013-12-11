#!/bin/env ruby  
# encoding: utf-8
module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name)

    html = <<-HTML
    <div class="uk-alert uk-alert-danger" data-uk-alert>
      <a href="" class="uk-alert-close uk-close"></a>
      <strong>#{sentence}</strong>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

end