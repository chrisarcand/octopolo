desc "Create a new staging branch"
long_desc "Create a new staging branch with today's date and remove the others.

Useful when we have changes in the current staging branch that we wish to remove."
command 'new-staging' do |c|
  c.switch :delete_old_branches, :default_value => false, :desc => "Should old staging branches be deleted?", :negatable => false

  c.action do |global_options, options, args|
    require_relative '../scripts/new_staging'
    options = global_options.merge(options)
    Octopolo::Scripts::NewStaging.new.execute(options)
  end
end
