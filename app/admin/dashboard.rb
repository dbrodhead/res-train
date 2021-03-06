ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
      # span :class => "blank_slate" do
        # span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      # end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
    section "Recent Updates" do
      table_for Tsession.order("updated_at desc").limit(10) do
        column :id do |tsession|
          link_to tsession.id, admin_tsession_path(tsession)
        end
        column :Date do |t|
          t.training_day.day
        end
        column :trade
        column :period
        column :instructor
        column :activity
        column :location
        column :updated_at
      end
      strong { link_to "View All Training Sessions", admin_tsessions_path }
    end
  end # content
end
