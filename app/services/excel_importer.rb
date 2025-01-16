class ExcelImporter
  def initialize(file_path)
    @file_path = file_path
  end

  def import
    xlsx = Roo::Excelx.new(@file_path)
    xlsx.each_row_streaming(offset: 1) do |row|
      Price.create(
        maker_symbol: row[0].value,
        model_number: row[1].value,
        retail_price: row[2].value,
        cost_price: row[3].value
      )
      Rails.logger.info "Imported #{row[1].value}"
    end
  end
end
