module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when 'the Projects page'
      projects_path
    when 'a Project page'
      project_path(Project.first)
    when /^the Project page for "(.*)"$/
      project_path(Project.find_by_name($1))
    when 'the New Project page'
      new_project_path
    when 'an Edit Project page'
      edit_project_path(Project.first)
    when /^the Edit Project page for "(.*)"$/
      edit_project_path(Project.find_by_name($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
