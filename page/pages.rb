create_table "pages", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  t.jsonb "title", default: {}
  t.jsonb "subtitle", default: {}
  t.jsonb "intro", default: {}
  t.jsonb "short_description", default: {}
  t.datetime "publish_at"
  t.string "status", default: "draft", null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.string "slug", null: false
  t.datetime "published_at"
  t.jsonb "meta_title", default: {}
  t.jsonb "meta_description", default: {}
  t.boolean "robots_noindex", default: false, null: false
  t.datetime "discarded_at"
  t.jsonb "published_locales", default: {}
  t.string "featured_type"
  t.jsonb "featured_video", default: {}
  t.jsonb "featured_byline", default: {}
  t.index ["discarded_at"], name: "index_pages_on_discarded_at"
  t.index ["intro"], name: "index_pages_on_intro", using: :gin
  t.index ["short_description"], name: "index_pages_on_short_description", using: :gin
  t.index ["subtitle"], name: "index_pages_on_subtitle", using: :gin
  t.index ["title"], name: "index_pages_on_title", using: :gin
end