class MigrateData < ActiveRecord::Migration
  def change
    ruby = Survey.create(name: "Ruby", slug: "ruby")

    years = {}
    [2008, 2009, 2010, 2012, 2014, 2015].each do |year|
      years[year] = ruby.years.create(year: year)
    end

    Question.all.each do |q|
      q.year = years[q.created_at.year]
      q.survey = ruby
      q.save!
      puts "q: #{q.id}"
    end

    Vote.all.each do |vote|
      vote.year = years[vote.created_at.year]
      vote.save!
      puts "vote: #{vote.id}"
    end
  end
end
