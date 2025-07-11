class InvoiceWriter
  def initialize(order)
    @order = order
  end

  def write_on(output)
    # called on current object, as there is no receiver
    write_header_on(output)
    write_body_on(output)
    write_totals_on(output)
  end

  def write_header_on(output)
    # ...
  end

  def write_body_on(output)
    # ...
  end

  def write_totals_on(output)
    # ...
  end
end

