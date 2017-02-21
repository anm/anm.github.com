module Jekyll
  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_page.html')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Posts Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      self.data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
    end
  end

  class TagPageAtom < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.xml'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_page_atom.xml')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Posts Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      self.data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
    end
  end

  class TagIndex < Page
    def initialize(site, base, dir, tags)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tags'] = tags
      self.data['title'] = "All Tags"
    end
  end

  class TagGenerator < Generator
    safe true
    def generate(site)
      print "Going to generate tag pages\n"
      if site.layouts.key? 'tag_page'
        dir = site.config['tag_dir'] || 'blog/tag'
        site.tags.keys.each do |tag|
          write_tag_page(site, File.join(dir, tag), tag)
          write_tag_page_atom(site, File.join(dir, tag), tag)
        end
      end

      tags = Hash.new
      for post in site.posts.docs
        for tag in post.data['tags']
          if tags[tag]
            tags[tag] += 1
          else
            tags[tag] = 1
          end
        end
      end

      write_tag_index(site, dir, tags)
    end

    def write_tag_index(site, dir, tags)
      index = TagIndex.new(site, site.source, dir, tags)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end

    def write_tag_page(site, dir, tag)
      tag_page = TagPage.new(site, site.source, dir, tag)
      tag_page.render(site.layouts, site.site_payload)
      tag_page.write(site.dest)
      site.pages << tag_page
    end

    def write_tag_page_atom(site, dir, tag)
      tag_page = TagPageAtom.new(site, site.source, dir, tag)
      tag_page.render(site.layouts, site.site_payload)
      tag_page.write(site.dest)
      site.pages << tag_page
    end

  end
end
