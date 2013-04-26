require 'csv'

namespace :db do
 desc "upload CSV data" 
 task populate: :environment do
    make_GED "#{Rails.root}/lib/tasks/GED_Institution.csv", 1
    make_Work "#{Rails.root}/lib/tasks/Workforce_1_Career_Center_Locations3.csv", 2
    #make_courses
    #make_reviews
 end
 #populate vendors
 def make_GED(filename, institution_type)
    csv_contents = CSV.parse(File.read(filename), {:converters => :all, headers: true} ) do |row|
    institution = Institution.new(name: row[0], address: row[1], city: row[2], 
                         state_abbr: "NY", phone: row[3], description: "Anyone interested in taking the official G.E.D. Test must demonstrate readiness by bringing a referral from an Adult Education Program.",
                         url: row[5], institution_type: institution_type)
    if institution.valid?
      institution.save
    else
      institution.errors.inspect
    end
  end
 end

 def make_Work(filename, institution_type)
    csv_contents = CSV.parse(File.read(filename), {:converters => :all, headers: true} ) do |row|
    institution = Institution.new(name: row[0], address: row[1], city: row[2], zip_code: row[3],
                         state_abbr: "NY", phone: row[4], url: row[5], institution_type: institution_type,
                         description: "Workforce and career training program")
    if institution.valid?
      institution.save
    else
      institution.errors.inspect
    end
  end
 end
end