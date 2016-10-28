###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def nav_tab(title, url, options = {}, &block)
    options[:class] ||= ''
    options[:class] << ' tab-link keyline-bottom hidden-xs quiet pad1y inline'
    options[:class] << ' active' if current_page.data.title == title
    options[:href] = url
    content_tag :a, title, options, &block
  end

  def tab_link(title, url, options = {}, &block)
    options[:class] ||= ''
    options[:class] << ' tab-link keyline-bottom quiet pad1y inline'
    options[:class] << ' active' if current_page.data.tab == title
    options[:href] = url
    content_tag :a, title, options, &block
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
