require File.expand_path("helpers/ocra_builder_helper", File.dirname(__FILE__))

folder = File.join(output_path, "test_app_0_1_WIN32")

context Releasy::Builders::WindowsFolder do
  setup { Releasy::Builders::WindowsFolder.new new_project }

  teardown do
    Rake::Task.clear
    Dir.chdir $original_path
  end

  hookup { Dir.chdir project_path }

  acts_like_an_ocra_builder

  context "valid" do
    if Gem.win_platform?
      context "on Windows" do
        hookup do
          topic.exclude_encoding
          topic.executable_type = :console
          topic.send :generate_tasks
        end

        asserts(:valid_for_platform?)
        asserts(:folder_suffix).equals "WIN32"
        asserts(:executable_name).equals "test_app.exe"
        asserts(:folder).equals folder
        asserts(:icon=, "test_app.icns").raises ArgumentError, /icon must be a .ico file/

        context "tasks" do
          tasks = [
              [ :Task, "build:windows:folder", [folder] ],
              [ :FileTask, '..', [] ], # byproduct of using #directory
              [ :FileTask, output_path, [] ],
              [ :FileTask, folder, source_files ],
          ]

          test_tasks tasks
        end

        context "generate folder" do
          hookup { clear_bundler_env { Rake::Task["build:windows:folder"].invoke } }

          asserts("files copied to folder") { source_files.all? {|f| same_contents? "#{folder}/src/#{f}", f } }
          asserts("folder includes link") { File.read("#{folder}/Releasy website.url") == link_file }
          asserts("executable created in folder and is of reasonable size") { File.size("#{folder}/test_app.exe") > 0 }
          asserts("program output") { %x[#{folder}/test_app.exe] }.equals "test run!\n"
        end
      end
    else
      context "NOT on Windows" do
        denies(:valid_for_platform?)
      end
    end
  end
end