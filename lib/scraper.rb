require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    doc.css("div.student-card").map do |student|
      student_hash = {
        name: student.css("h4.student-name").text,
        location: student.css("p.student-location").text,
        profile_url: student.css("a").attr("href").value
      }
    end 
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    profile_hash = {
      bio: doc.css(".description-holder" p).text,
      github: doc.css(".social-icon-container a").attr("href").value if .include?"github"
      profile_quote: doc.css(".profile-quote").text
    }
    doc.css(".social-icon-container a").each do |link|
      if link.find {|string| }
    end 
    
    <div class="social-icon-container">
          <a href="https://twitter.com/jmburges"><img class="social-icon" src="../assets/img/twitter-icon.png"/></a>
          <a href="https://www.linkedin.com/in/jmburges"><img class="social-icon" src="../assets/img/linkedin-icon.png"/></a>
          <a href="https://github.com/jmburges"><img class="social-icon" src="../assets/img/github-icon.png"/></a>
          <a href="http://joemburgess.com/"><img class="social-icon" src="../assets/img/rss-icon.png"/></a>
        </div>
  end

end

