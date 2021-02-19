create_table "missions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  t.jsonb "title", default: {}
  t.jsonb "short_description", default: {}
  t.jsonb "facts", default: {}
  t.jsonb "minimum_time_commitment_information", default: {}
  t.jsonb "location_info", default: {}
  t.jsonb "workhour", default: [], null: false
  t.string "commitment", default: "one_time", null: false
  t.string "status", default: "draft", null: false
  t.jsonb "location_type", default: [], null: false
  t.datetime "open_from"
  t.datetime "open_to"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.string "slug", null: false
  t.datetime "published_at"
  t.jsonb "meta_title", default: {}
  t.jsonb "meta_description", default: {}
  t.boolean "robots_noindex", default: false, null: false
  t.jsonb "accessibility_description", default: {}
  t.uuid "organization_group_id", null: false
  t.uuid "author_id"
  t.datetime "discarded_at"
  t.integer "legacy_id"
  t.integer "minimum_time_commitment_amount"
  t.string "minimum_time_commitment_amount_type"
  t.jsonb "subtitle", default: {}
  t.jsonb "published_locales", default: {}
  t.boolean "is_team_mission", default: false
  t.boolean "open_for_applications", default: true
  t.string "legacy_url_alias"
  t.integer "applications_count", default: 0
  t.index ["author_id"], name: "index_missions_on_author_id"
  t.index ["discarded_at"], name: "index_missions_on_discarded_at"
  t.index ["facts"], name: "index_missions_on_facts", using: :gin
  t.index ["location_info"], name: "index_missions_on_location_info", using: :gin
  t.index ["minimum_time_commitment_information"], name: "index_missions_on_minimum_time_commitment_information", using: :gin
  t.index ["organization_group_id"], name: "index_missions_on_organization_group_id"
  t.index ["short_description"], name: "index_missions_on_short_description", using: :gin
  t.index ["slug"], name: "index_missions_on_slug", unique: true
  t.index ["title"], name: "index_missions_on_title", using: :gin
end