# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{radiant-event_calendar-extension}
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["spanner"]
  s.date = %q{2010-10-19}
  s.description = %q{An event calendar extension that administers events locally or draws them from any ical or CalDAV publishers (Google Calendar, .Mac, Darwin Calendar Server, etc.)}
  s.email = %q{will@spanner.org}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitmodules",
     "README.md",
     "Rakefile",
     "VERSION",
     "app/controllers/admin/calendars_controller.rb",
     "app/controllers/admin/event_venues_controller.rb",
     "app/controllers/admin/events_controller.rb",
     "app/controllers/admin/icals_controller.rb",
     "app/controllers/events_controller.rb",
     "app/models/calendar.rb",
     "app/models/event.rb",
     "app/models/event_calendar_page.rb",
     "app/models/event_occurrence.rb",
     "app/models/event_recurrence_rule.rb",
     "app/models/event_venue.rb",
     "app/models/ical.rb",
     "app/views/admin/calendars/_actions.html.haml",
     "app/views/admin/calendars/_form.html.haml",
     "app/views/admin/calendars/edit.html.haml",
     "app/views/admin/calendars/help.html.erb",
     "app/views/admin/calendars/index.html.haml",
     "app/views/admin/calendars/new.html.haml",
     "app/views/admin/calendars/show.html.haml",
     "app/views/admin/event_venues/_event_venue.html.haml",
     "app/views/admin/event_venues/_form.html.haml",
     "app/views/admin/event_venues/edit.html.haml",
     "app/views/admin/event_venues/index.html.haml",
     "app/views/admin/event_venues/new.html.haml",
     "app/views/admin/event_venues/remove.html.haml",
     "app/views/admin/events/_event.html.haml",
     "app/views/admin/events/_form.html.haml",
     "app/views/admin/events/_list_head.html.haml",
     "app/views/admin/events/edit.html.haml",
     "app/views/admin/events/index.html.haml",
     "app/views/admin/events/new.html.haml",
     "app/views/admin/events/remove.html.haml",
     "app/views/admin/icals/refresh.html.haml",
     "app/views/admin/icals/refresh_all.html.haml",
     "app/views/events/_defacet.html.haml",
     "app/views/events/_event.html.haml",
     "app/views/events/_event_postscript.html.haml",
     "app/views/events/_faceting.html.haml",
     "app/views/events/_minicalendar.html.haml",
     "app/views/events/_other_page_parts.html.haml",
     "app/views/events/_views.html.haml",
     "app/views/events/index.html.haml",
     "app/views/events/index.ics.erb",
     "app/views/events/index.rss.builder",
     "config/routes.rb",
     "db/migrate/001_create_calendar_and_events.rb",
     "db/migrate/002_calendar_add_ical_url.rb",
     "db/migrate/003_add_calendar_category.rb",
     "db/migrate/004_add_slug.rb",
     "db/migrate/005_add_subscription_refresh_history.rb",
     "db/migrate/006_create_icals.rb",
     "db/migrate/007_move_subscriptions_to_ical.rb",
     "db/migrate/008_clean_out_calendar.rb",
     "db/migrate/009_basic_authentication.rb",
     "db/migrate/010_refresh_interval.rb",
     "db/migrate/011_more_properties.rb",
     "db/migrate/20090818133511_simpler_ical_columns.rb",
     "db/migrate/20090819130919_ownership.rb",
     "db/migrate/20090820073805_site_scope.rb",
     "db/migrate/20091118100725_event_status.rb",
     "db/migrate/20100216080944_more_event_data.rb",
     "db/migrate/20100218131410_recurrence_parts.rb",
     "db/migrate/20100219102227_venues_and_categories.rb",
     "db/migrate/20100221180539_recurrence_rules.rb",
     "db/migrate/20100222182112_occurrences.rb",
     "db/migrate/20100927140126_amended_events.rb",
     "db/migrate/20100927203940_calendar_keywords.rb",
     "event_calendar_extension.rb",
     "lib/calendar_period.rb",
     "lib/event_calendar_admin_ui.rb",
     "lib/event_calendar_tags.rb",
     "lib/event_search.rb",
     "lib/event_statuses.rb",
     "lib/tasks/event_calendar_extension_tasks.rake",
     "public/icals/blank",
     "public/images/admin/calendar.png",
     "public/images/event_calendar/calendarlinkbg.png",
     "public/images/event_calendar/event_shadow.png",
     "public/images/event_calendar/ical16.png",
     "public/images/event_calendar/maplinkbg.png",
     "public/images/event_calendar/one_event.png",
     "public/images/event_calendar/several_events.png",
     "public/javascripts/admin/event_calendar.js",
     "public/stylesheets/sass/admin/event_calendar.sass",
     "radiant-event_calendar-extension.gemspec",
     "spec/datasets/calendar_events_dataset.rb",
     "spec/datasets/calendar_pages_dataset.rb",
     "spec/datasets/calendar_sites_dataset.rb",
     "spec/datasets/calendars_dataset.rb",
     "spec/datasets/recurrence_dataset.rb",
     "spec/files/dummy.ics",
     "spec/files/ny.ics",
     "spec/lib/event_calendar_page_spec.rb",
     "spec/models/calendar_spec.rb",
     "spec/models/event_spec.rb",
     "spec/models/ical_spec.rb",
     "spec/models/recurrence_rule_spec.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/radiant/radiant-event_calendar-extension}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Event Calendar Extension for Radiant CMS}
  s.test_files = [
    "spec/datasets/calendar_events_dataset.rb",
     "spec/datasets/calendar_pages_dataset.rb",
     "spec/datasets/calendar_sites_dataset.rb",
     "spec/datasets/calendars_dataset.rb",
     "spec/datasets/recurrence_dataset.rb",
     "spec/lib/event_calendar_page_spec.rb",
     "spec/models/calendar_spec.rb",
     "spec/models/event_spec.rb",
     "spec/models/ical_spec.rb",
     "spec/models/recurrence_rule_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ri_cal>, [">= 0"])
      s.add_runtime_dependency(%q<chronic>, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
      s.add_runtime_dependency(%q<radiant>, [">= 0.9.0"])
      s.add_runtime_dependency(%q<radiant-layouts-extension>, [">= 0"])
    else
      s.add_dependency(%q<ri_cal>, [">= 0"])
      s.add_dependency(%q<chronic>, [">= 0"])
      s.add_dependency(%q<uuidtools>, [">= 0"])
      s.add_dependency(%q<radiant>, [">= 0.9.0"])
      s.add_dependency(%q<radiant-layouts-extension>, [">= 0"])
    end
  else
    s.add_dependency(%q<ri_cal>, [">= 0"])
    s.add_dependency(%q<chronic>, [">= 0"])
    s.add_dependency(%q<uuidtools>, [">= 0"])
    s.add_dependency(%q<radiant>, [">= 0.9.0"])
    s.add_dependency(%q<radiant-layouts-extension>, [">= 0"])
  end
end

