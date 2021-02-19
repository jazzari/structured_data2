create_table "organization_groups", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  t.uuid "organization_id", null: false
  t.string "organization_type"
  t.boolean "default_group", default: false
  t.jsonb "name", default: {}
  t.string "company_number", null: false
  t.string "postal_address", null: false
  t.string "postal_code", null: false
  t.uuid "area_id"
  t.string "website_url"
  t.string "instagram_url"
  t.string "facebook_url"
  t.string "twitter_url"
  t.string "phone_number"
  t.string "email_address"
  t.string "status"
  t.datetime "deleted_at"
  t.string "slug", null: false
  t.jsonb "meta_title", default: {}
  t.jsonb "meta_description", default: {}
  t.boolean "robots_noindex", default: false, null: false
  t.datetime "created_at", precision: 6, null: false
  t.datetime "updated_at", precision: 6, null: false
  t.integer "legacy_id"
  t.datetime "discarded_at"
  t.string "postal_locality"
  t.string "linkedin_url"
  t.jsonb "published_locales", default: {}
  t.index ["area_id"], name: "index_organization_groups_on_area_id"
  t.index ["discarded_at"], name: "index_organization_groups_on_discarded_at"
  t.index ["organization_id"], name: "index_organization_groups_on_organization_id"
end