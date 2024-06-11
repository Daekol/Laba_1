class PagesController < ApplicationController
  def home
    @dynamic_content = "Вітання на головній сторінці"
  end

  def about
    @dynamic_content = "Тут ви можете дізнатися про нас"
  end

  def page; end

  def process_page
    @name = params [:name]
    @age = params [:age]
    @email = params [:email]
    @feedback = params [:feedback]
  end
end
