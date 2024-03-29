# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.breezedigs.com"
SitemapGenerator::Sitemap.sitemaps_host = "http://s3.amazonaws.com/bzbldgsimgs/"
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all buildings:
  #
    Building.find_each do |building|
      add building_path(building), :lastmod => building.updated_at
    end

    add '/buildings', changefreq: 'weekly'

end
