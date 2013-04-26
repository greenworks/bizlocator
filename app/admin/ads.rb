ActiveAdmin.register Ad do

  menu :priority => 1 , :parent => "Listings"

  index do

    column :id
    column :title
    column :price
    column "image" do |ad|
      image_tag(ad.image.url,:width => 75)
    end
    column "Decription" do |ad|
      truncate(ad.description, :length=> 50)
    end
    column "Ad Category" do |ad|
      link_to ad.ad_category.nil? ? "NA" : ad.ad_category.name , ad.ad_category
    end
    column "Ad Category" do |ad|
      link_to "Ad Categories (#{ad.ad_category.name})", :controller => "ad_categories", :action => "index", 'q[ad_category_id_eq]' => "#{ad.ad_category_id}".html_safe
    end
    column "Address" do |ad|
      link_to ad.address.nil? ? "NA" : ad.address.name , ad.address
    end
    column "Company" do |ad|
      link_to ad.company.nil? ? "NA" : ad.company.name , ad.company
    end
    column "Shopping Mall" do |ad|
      link_to ad.shopping_mall.nil? ? "NA" : ad.shopping_mall.name, ad.shopping_mall
    end
    column "User" do |ad|
      link_to ad.user.nil? ? "NA" : ad.user.name, ad.user
    end
    column "Ad Position" do |ad|
      link_to ad.ad_position.nil? ? "NA" : ad.ad_position.name, ad.ad_position
    end

    column :expiry_date
    column :isapproved
    column :ispublished
    default_actions

  end

  show do |ad|
    attributes_table do
      row :title
      row :price
      row :image do
        image_tag(ad.image.url)
      end
      row :description
      row :ad_category_id
      row :address_id
      row :company_id
      row :shopping_mall_id
      row :user_id
      row :ad_position_id

      row :expiry_date
      row :isapproved
      row :ispublished

      row "summary look" do
        render "ads/ad_content",{:ad=>ad , :display_mode => "summary"}
      end

      row "detailed look" do
        render "ads/ad_content",{:ad=>ad , :display_mode => "detailed"}
      end

    end
    active_admin_comments
  end

end
