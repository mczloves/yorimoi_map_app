ActiveAdmin.register Spot do
  permit_params :name, :address, :body, :image

  form do |f|
    f.inputs "Spots" do
      f.input :name
      f.input :address
      f.input :body
      f.input :image, multiple: true, :as => :file
    end
    f.actions
  end

  show do |item_image|
    attributes_table do
      row :name
      row :address
      row :body
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(spot.image.url)
      end
    end
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :address, :body, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :body, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
