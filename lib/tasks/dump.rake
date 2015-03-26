

namespace :dump do
  task :csv => :environment do
    File.open("tmp/survey.csv", "w+") do |f|
      survey = Survey.first
      f.write("Yearly participation\n--------\n")
      survey.yearly_participation.each do |participation|
        f.write(participation.join(",") + "\n")
      end
      f.write("\n\n\n")
      f.write(survey.to_csv)
    end
  end
end
