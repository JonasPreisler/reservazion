class ModalsController < ApplicationController

  def table
    @table = Table.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def dates
    @slot = Slot.all
    respond_to do |format|
      format.html
      format.js
    end
  end

end
