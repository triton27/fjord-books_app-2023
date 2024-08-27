# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # URLにロケール情報を保持するためのメソッド
  def default_url_options
    { locale: I18n.locale }
  end
end
