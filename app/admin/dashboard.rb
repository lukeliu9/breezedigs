ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "Building Count" do
            pluralize(Building.all.count, 'Building')
        end
      end
      column do
        panel "User Count" do
            pluralize(User.all.count, 'User')
        end
      end
      column do
        panel "Review Count" do
            pluralize(Review.all.count, 'Review')
        end
      end
      column do
        panel "Rent Count" do
            pluralize(Rent.all.count, 'Rent')
        end
      end
      column do
        panel "Photo Count" do
            pluralize(Photo.all.count, 'Photo')
        end
      end
    end

    columns do

      column do
        panel "Recent Reviews" do
          table_for Review.order('created_at desc').limit(3) do
            column("User")          {|review| review.user.email} 
            column("Building")      {|review| review.building.name} 
            column("Pros")          {|review| review.pros} 
            column("Created At")    {|review| review.created_at} 
          end
        end
      end

      column do
        panel "Recent Rents" do
          table_for Rent.order('created_at desc').limit(5) do
            column("User")          {|rent| rent.user.email} 
            column("Building")      {|rent| rent.building.name} 
            column("Rent Price")    {|rent| rent.rent} 
            column("Created At")    {|rent| rent.created_at} 
          end
        end
      end
    end # Ends first column

    columns do

      column do
        panel "Recent Buildings" do
          table_for Building.order('created_at desc').limit(5).each do |building|
            column("Name")          {|building| building.name }
            column("Address")       {|building| building.address }
            column("Zip")           {|building| building.zip }
            column("City")          {|building| building.city }
            column("User")          {|building| building.user }
            end
          end
        end

      column do
        panel "Recent Signups" do
          table_for User.order('created_at desc').limit(5).each do |user|
            column(:email)          {|user| link_to(user.email, admin_user_path(user)) }
            column("Created At")    {|user| user.created_at }
          end
        end
      end
    end # Ends 2nd column

  columns do
     column do
      panel "Recent Photos" do
        table_for Photo.order('created_at desc').limit(5).each do |photo|
          column("User")          {|photo| photo.user.email }
          column(:image)    {|photo| photo.image }
        end
      end
    end
  end

  end
end
