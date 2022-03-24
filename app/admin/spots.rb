ActiveAdmin.register Spot do
  permit_params :name, :address, :body, :image, :image_2, :url, :street_view

  form do |f|
    f.inputs "Spots" do
      f.input :name
      f.input :address
      f.input :body
      f.input :image, multiple: true, as: :file
      f.input :image_2, multiple: true, as: :file
      f.input :url
      f.input :street_view
    end
    f.actions
  end

  show do |_item_image|
    attributes_table do
      row :name
      row :address
      row :body
      row :url
      # show画面で画像を表示するためのタグを追加
      row :image do
        image_tag(spot.image.url)
      end
    end
  end
end
