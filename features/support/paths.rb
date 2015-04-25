# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

  when /^the (Tickets&Tables )?home\s?page$/ then '/welcome/home'
	when /^the (Login )?home\s?page$/ then '/login'
	when /^the (Signup )?home\s?page$/ then '/signup'
	when /^the (ViewReservation )?home\s?page$/ then '/reservations/details/1'
	when /^the (ViewReservation2 )?home\s?page$/ then '/reservations/details/2'
	when /^the (MyReservations )?home\s?page$/ then '/welcome/reservations'
	when /^the (Restaurants )?home\s?page$/ then '/restaurants/home'
	when /^the (CreateRestaurant )?home\s?page$/ then '/restaurants/create'
	when /^the (ViewRestaurant )?home\s?page$/ then '/restaurants/details/1'
  when /^the (ViewRestaurant2 )?home\s?page$/ then '/restaurants/details/2'
	when /^the (EditRestaurant )?home\s?page$/ then '/restaurants/edit/2'
	when /^the (ConfirmDelete )?home\s?page$/ then '/restaurants/delete/1'
	when /^the (ConfirmDeleteReservation )?home\s?page$/ then '/reservations/delete/1'
	when /^the (CreateReservation )?home\s?page$/ then '/reservations/create/1'
	when /^the (CreateReservation2 )?home\s?page$/ then '/reservations/create/2'
	when /^the (EditReservation )?home\s?page$/ then '/reservations/edit/1'
	when /^the (EditReservation2 )?home\s?page$/ then '/reservations/edit/2'
	when /^the (InvalidEditReservation )?home\s?page$/ then '/reservations/save'
	when /^the (InvalidEditRestaurant )?home\s?page$/ then '/restaurants/save'

  #  when /^the projects page$/ then '/projects'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
