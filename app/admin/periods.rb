ActiveAdmin.register Period do
  index do  
    selectable_column
    column :id
    column :name
    column :number
    column 'Start Time', :stime
    column 'End Time', :etime
    column :created_at
    column :updated_at
    default_actions
  end
end
