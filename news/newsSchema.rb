create_table "news", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  t.jsonb "title", default: {}
  t.jsonb "subtitle", default: {}
  t.jsonb "intro", default: {}
  t.jsonb "short_description", default: {}
  t.datetime "publish_at"
  t.string "status", default: "draft", null: false
  t.string "slug", null: false
  t.datetime "published_at"
  t.jsonb "meta_title", default: {}
  t.jsonb "meta_description", default: {}
  t.boolean "robots_noindex", default: false, null: false
  t.datetime "discarded_at"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.jsonb "published_locales", default: {}
  t.index ["discarded_at"], name: "index_news_on_discarded_at"
end
