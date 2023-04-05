Pod::Spec.new do |s|
    s.name             = 'Flutter'
    s.version          = '0.1.0'
    s.summary          = 'By far the most fantastic view I have seen in my entire life. No joke.'
   
    s.description      = <<-DESC
  This fantastic view changes its color gradually makes your app look fantastic!
                         DESC
   
    s.homepage         = 'https://github.com/diegoleema/flutter-module-public'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'diegoleema' => 'diegoleema@gmail.com' }
    s.source           = { :git => 'https://github.com/diegoleema/flutter-module-public.git', :tag => s.version.to_s }
   
    s.ios.deployment_target = '12.0'
    s.source_files = 'Classes/**/*'
    s.public_header_files = 'Classes/**/*.h'
    s.dependency 'Flutter'
    # s.source_files = 'Classes//*{.h,.a,.swift,.mm,.m,.hpp}'
    s.xcconfig = { 
      # here on LDFLAG, I had to set -l and then the library name (without lib prefix although the file name has it).
      # 'OTHER_LDFLAGS' => '-framework opencv2 -lc++ -lAccuraFace -lAccuraEmirate -lDocRecog -lz',
      'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/.."/',
      "LIBRARY_SEARCH_PATHS" => '"${PROJECT_DIR}/.."/*',
    }
  end