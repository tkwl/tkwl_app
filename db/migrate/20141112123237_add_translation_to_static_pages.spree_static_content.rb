# This migration comes from spree_static_content (originally 20141024150705)
class AddTranslationToStaticPages < ActiveRecord::Migration
  def up
    params = { title: :string, body: :text, slug: :string, foreign_link: :string, meta_keywords: :string, meta_title: :string, meta_description: :string }
    Spree::Page.create_translation_table!(params, { migrate_data: true })
  end
  
  def down
    Spree::Page.drop_translation_table! migrate_data: true
  end
end
