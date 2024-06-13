class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if search_params_present?
      search_query = build_search_query
      @vans = Van.global_search(search_query)

      if params[:check_in].present? && params[:check_out].present?
        check_in_date = Date.parse(params[:check_in])
        check_out_date = Date.parse(params[:check_out])
        @vans = @vans.select { |van| available?(van, check_in_date, check_out_date) }
      end
    else
      @vans = Van.all
    end
  end

  private

  def search_params_present?
    params[:location].present? || params[:check_in].present? || params[:check_out].present? || params[:number_of_seat].present?
  end

  def build_search_query
    query = []
    query << params[:location] if params[:location].present?
    query << params[:number_of_seat] if params[:number_of_seat].present?
    query.join(' ')
  end

  def available?(van, check_in_date, check_out_date)
    asked_days = (check_in_date..check_out_date).to_a
    van.bookings.none? do |booking|
      booked_days = (booking.start_date..booking.end_date).to_a
      asked_days.any? { |day| booked_days.include?(day) }
    end
  end
end
