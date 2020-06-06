require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyFirstApp
  class Application < Rails::Application
    # 'rails g'コマンドでコントローラを作成すると、生成したファイルに対応したスタイルシート・ヘルパー・Javascript・アプリケーションをテストするためのファイルが同時に生成される
    # 今回必要のないファイルのため、下記記述により、不要なファイルを生成しないようにする
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end
