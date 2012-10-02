
require 'rake/packagetask'

module SLab
  module Omeka
    module Rake

      class PackageTask < ::Rake::PackageTask

        def package_dir_path
          "#{package_dir}/#{@name}"
        end

        def package_name
          @name
        end

        def basename
          @version ? "#{@name}-#{@version}" : @name
        end

        def tar_bz2_file
          "#{basename}.tar.bz2"
        end

        def tar_gz_file
          "#{basename}.tar.gz"
        end

        def tgz_file
          "#{basename}.tgz"
        end

        def zip_file
          "#{basename}.zip"
        end

      end
    end
  end
end

