# Install hook code here
puts 'Copying stylesheet'
FileUtils.cp File.join(File.dirname(__FILE__), 'public/stylesheets/sexy_flash.css'), "#{Rails.root}/public/stylesheets/"
puts 'Copying icons'
destination = File.join(Rails.root, 'public/images/icons/sexy_flash')
source = File.dirname(__FILE__) + '/public/images/icons/sexy_flash/'
FileUtils.mkdir_p(destination)
FileUtils.cp_r(Dir.glob(source + '*.*'), destination)
