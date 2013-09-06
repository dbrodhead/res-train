module TrainingDaysHelper
  # Helper method to set row colour if name of trade is Ships Company
  def category_table_row_class(category_typ)
     { "Ships Company" => "info" }[category_typ]
  end
end
