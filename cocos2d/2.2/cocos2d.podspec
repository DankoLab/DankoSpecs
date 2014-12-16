Pod::Spec.new do |spec|
  spec.name         = 'cocos2d'
  spec.version      = '2.2'
  spec.license      = 'MIT'
  spec.authors      = {
    'Ricardo Quesada' => 'ricardoquesada@gmail.com'
  }
  spec.homepage     = 'http://www.cocos2d-iphone.org'
  spec.summary      = "cocos2d for iPhone is a framework for building 2D games, demos, and other graphical/interactive applications."

  spec.source       =  {
    git: 'https://github.com/cocos2d/cocos2d-iphone-classic.git',
    tag: 'v2.2-release'
  }
  spec.source_files = 'cocos2d/**/*.{h,m,mm,c}'
  spec.frameworks = 'OpenGLES', 'QuartzCore', 'GameKit', 'CoreText'
  spec.library = 'z'
  spec.prefix_header_contents = "\n#define CC_ENABLE_GL_STATE_CACHE 1\n"
  spec.header_mappings_dir = 'cocos2d'
  spec.requires_arc = false

  spec.subspec 'libpng' do |sbspec|
    sbspec.name = 'libpng'
    sbspec.source_files = 'external/libpng/*.{h,c}'
    sbspec.exclude_files = 'external/libpng/pngtest.c',
		           'external/libpng/example.c'
  end

  spec.subspec 'kazmath' do |sbspec|
    sbspec.name = 'kazmath'
    sbspec.source_files = 'external/kazmath/src/**/*.{c,h}',
                          'external/kazmath/include/**/*.{c,h}'
    sbspec.header_mappings_dir = 'external/kazmath/include'
  end

  spec.subspec 'CocosDenshion' do |sbspec|
    sbspec.name = 'CocosDenshion'
    sbspec.source_files = 'CocosDenshion/*.{h,m}'
    sbspec.frameworks = 'OpenAL', 'AVFoundation', 'AudioToolbox'
  end

  spec.subspec 'CCBReader' do |sbspec|
    sbspec.name = 'CCBReader'
    sbspec.source_files = 'external/CCBReader/CCBReader/*.{h,m}',
                          'external/CCBReader/CCScrollView/*.{h,m}',
                          'external/CCBReader/CCControlExtension/**/*.{h,m}'
    sbspec.exclude_files = 'external/CCBReader/CCControlExtension/CCControl/CCControlSwitch.{h,m}'
  end

end