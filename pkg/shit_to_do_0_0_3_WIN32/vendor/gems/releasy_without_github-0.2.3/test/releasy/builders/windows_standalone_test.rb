require File.expand_path("helpers/ocra_builder_helper", File.dirname(__FILE__))

folder = File.join(output_path, "test_app_0_1_WIN32_EXE")

context Releasy::Builders::WindowsStandalone do
  setup { Releasy::Builders::WindowsStandalone.new new_project }

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
          topic.icon = "test_app.ico"
          topic.send :generate_tasks
        end

        asserts(:valid_for_platform?)
        asserts(:folder_suffix).equals "WIN32_EXE"
        asserts(:executable_name).equals "test_app.exe"
        asserts(:folder).equals folder
        asserts(:icon=, "test_app.icns").raises ArgumentError, /icon must be a .ico file/

        context "tasks" do
          tasks = [
              [ :Task, "build:windows:standalone", [folder] ],
              [ :FileTask, '..', [] ], # byproduct of using #directory
              [ :FileTask, output_path, [] ], # byproduct of using #directory
              [ :FileTask, folder, source_files ],
          ]

          test_tasks tasks
        end

        context "generate folder" do
          hookup { clear_bundler_env { Rake::Task["build:windows:standalone"].invoke } }

          asserts("readme copied to folder") { same_contents? "#{folder}/README.txt", "README.txt" }
          asserts("license copied to folder") {  same_contents? "#{folder}/LICENSE.txt", "LICENSE.txt" }
          asserts("folder includes link") { File.read("#{folder}/Releasy website.url") == link_file }
          asserts("executable created in folder and is of reasonable size") { File.size("#{folder}/test_app.exe") > 2**20 }
          asserts("program output") { clear_bundler_env { %x[#{folder}/test_app.exe] } }.equals "test run!\n"
        end
      end
    else
      context "NOT on Windows" do
        denies(:valid_for_platform?)
      end
    end
  end
end