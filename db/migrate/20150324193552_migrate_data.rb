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

    {2008 => 2008,
     2009 => 2009,
     2010 => 2010,
     2011 => 2010,
     2012 => 2012,
     2013 => 2012,
     2014 => 2014,
     2015 => 2015}.each do |from, to|
      to_year = Year.where(year: to).first
      Vote.where("year = ?", from).update_all("year_id = #{to_year.id}")
    end
  end
end
