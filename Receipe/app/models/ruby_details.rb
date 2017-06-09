rvm use ruby-2.3.3 do rvm gemset create rails5
rvm use ruby-2.3.3@rails5
gem 'haml-rails'
gem "erb2haml", :group => :development


flash messages:

 %body
  .container
    - if notice
      = content_tag :div, :class => "alert alert-info success_msg" do
        %a.flash_alert{:href => "#", :style => "float:right;"} ×
        = notice
    - elsif alert
      = content_tag :div, :class => "alert alert-danger error_msg" do
        %a.flash_alert{:href => "#", :style => "float:right;"} ×
        = alert
    = yield