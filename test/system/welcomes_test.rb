# frozen_string_literal: true

require 'application_system_test_case'

class WelcomesTest < ApplicationSystemTestCase
  test '/ ページ表示' do
    visit root_url

    assert_selector 'h1', text: 'イベント一覧'
  end
end
