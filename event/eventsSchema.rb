create_table "events", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  t.text "address"
  t.datetime "starts_at"
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.string "slug", null: false
  t.uuid "organization_group_id"
  t.datetime "discarded_at"
  t.jsonb "subtitle", default: {}
  t.jsonb "title", default: {}
  t.jsonb "short_description", default: {}
  t.jsonb "intro", default: {}
  t.datetime "ends_at"
  t.jsonb "meta_title", default: {}
  t.jsonb "meta_description", default: {}
  t.boolean "robots_noindex", default: false, null: false
  t.jsonb "published_locales", default: {}
  t.datetime "publish_at"
  t.string "status", default: "draft"
  t.boolean "open_for_applications", default: true
  t.string "audience"
  t.integer "cost", default: 0
  t.string "contact_person_name", null: false
  t.string "contact_person_email", null: false
  t.jsonb "contact_person_description", default: {}
  t.integer "applications_count", default: 0
  t.datetime "open_from"
  t.datetime "open_to"
  t.integer "amount_of_spots"
  t.index ["discarded_at"], name: "index_events_on_discarded_at"
  t.index ["organization_group_id"], name: "index_events_on_organization_group_id"
  t.index ["slug"], name: "index_events_on_slug", unique: true
end