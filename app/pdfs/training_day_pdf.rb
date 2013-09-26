class TrainingDayPdf < Prawn::Document

  def initialize(training_day, view)
    super()
    @training_day = invoice
    @view = view
    text "Invoice #{@training_day.id}"
  end
end