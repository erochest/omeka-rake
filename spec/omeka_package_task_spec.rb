
require 'slab/omeka/rake/package_task'

module SLab
  module Omeka
    module Rake

      describe PackageTask do
        let(:task) { PackageTask.new('Name', '1.2.3') }

        it 'should not include the version in the package directory path.' do
          task.package_dir_path.should_not match(/1\.2\.3/)
        end

        it 'should not include the version in the package name.' do
          task.package_name.should_not match(/1\.2\.3/)
        end

        it "should include the version in the basename if it's available." do
          task.basename.should match(/1\.2\.3/)
        end

        it "should not include the version in the basename if it's not given." do
          t2 = PackageTask.new('Name', :noversion)
          t2.basename.should eq('Name')
        end

        it 'should include the version in the zip file name.' do
          task.zip_file.should match(/1\.2\.3/)
        end
      end

    end
  end
end


