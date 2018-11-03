Rails.application.config.generators do |g|
    g.helper false # ヘルパーを作成しない
    g.assets false # CSS, JavaScript ファイルを作成しない
    g.skip_routes true # config/routes.rb を変更しない
    g.test_framework false # テストスクリプトを生成しない
end
