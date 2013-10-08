class TrainingDayPdf < Prawn::Document

  def initialize(training_day)
    super()
    @training_day = training_day
    text "Day #{@training_day.day}"
    text "Weekday #{@training_day.weekday}"
    move_down 20
    table(tsession_table_data, :cell_style => {:background_color => "FFFFCC"}) do   
      row(0).font_style = :bold
    end
  end
  
  def tsession_rows
    @training_day.tsessions.map do |i|
      [ i.trade.name, i.period.name, 
      i.period.stime.strftime('%H:%M'), i.period.etime.strftime('%H:%M'),
        i.instructor, i.activity, i.location]
    end
  end
  
  def tsession_header
    ["Trade", "Period", "Start Time", "End Time", "Instructor", "Activity", "Location"]
  end

  def tsession_table_data
    [tsession_header, *tsession_rows] 
  end
end