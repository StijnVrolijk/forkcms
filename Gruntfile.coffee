module.exports = (grunt) ->

  # Project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    theme_src: 'src/Frontend/Themes/<%= pkg.theme %>/src'
    theme_build: 'src/Frontend/Themes/<%= pkg.theme %>/Core'
    coffee:
      compile:
        expand: true
        flatten: true
        src: ['<%= theme_src %>/coffee/*']
        dest: '<%= theme_build %>/Js/'
        ext: '.js'
    compass:
      options:
        config: '<%= theme_src %>/Layout/config.rb'
        sassDir: '<%= theme_src %>/Layout/Sass'
        cssDir: '<%= theme_build %>/Layout/Css'
        imageDir: '<%= theme_build %>/Layout/Images'
        fontsDir: '<%= theme_build %>/Layout/Fonts'
        relativeAssets: true
      dist: {}
      build:
        options:
          outputStyle: 'compressed'
    replace:
      scripts:
        options:
          patterns: [
            {
              match: /\<script\ src=\"\/src/g
              replacement: '<script src="{$THEME_URL}/src'
            }
            {
              match: /\<script\ src=\"\/Core\/Js/g
              replacement: '<script src="{$THEME_URL}/Core/Js'
            }
          ]
        files: [
          src: '<%= theme_src %>/Layout/Templates/Footer.tpl'
          dest: '<%= theme_build %>/Layout/Templates/'
          flatten: true
          expand: true
        ]
    useminPrepare:
      options:
        root: '<%= theme_src %>/../'
        dest: '<%= theme_src %>/../'
      html: '<%= theme_src %>/Layout/Templates/Footer.tpl'
    usemin:
      html: '<%= theme_build %>/Layout/Templates/Footer.tpl'
      options:
        blockReplacements:
          js: (block) ->
            '<script src="{$THEME_URL}' + block.dest + '"></script>'
    clean:
      fonts: [
        '<%= theme_build %>/Layout/Fonts/*'
      ]
      fontsCss: [
        '<%= theme_build %>/Layout/Fonts/*.css'
      ]
      images: [
        '<%= theme_build %>/Layout/Images/*'
      ]
      templates: [
        '<%= theme_build %>/Layout/Templates/*'
      ]
      dist: [
        '.tmp'
      ]
    autoprefixer:
      dist:
        src: '<%= theme_build %>/Layout/Css/**.css'
    copy:
      templates:
        files: [
          expand: true
          cwd: '<%= theme_src %>/Layout/Templates/'
          src: '**'
          dest: '<%= theme_build %>/Layout/Templates/'
        ]
      fonts:
        files: [
          expand: true
          cwd: '<%= theme_src %>/Layout/Fonts/'
          src: '**'
          dest: '<%= theme_build %>/Layout/Fonts/'
        ]
    imagemin:
      dynamic:
        files: [
          expand: true
          cwd: '<%= theme_src %>/Layout/Images/'
          src: ['{,*/}*.{jpg,jpeg,gif,png}']
          dest: '<%= theme_build %>/Layout/Images/'
        ]
    fontgen:
      all:
        options:
          stylesheet: false
        files: [
          src: [
            '<%= theme_src %>/Layout/Fonts/*.ttf'
            '<%= theme_src %>/Layout/Fonts/*.otf'
          ]
          dest: '<%= theme_build %>/Layout/Fonts/'
        ]
    svgmin:
      dist:
        files: [
          expand: true
          cwd: '<%= theme_src %>/Layout/Images/'
          src: '*.svg'
          dest: '<%= theme_build %>/Layout/Images/'
        ]

    webfont:
      icons:
        src: '<%=theme_src %>/Layout/icon-sources/*.svg'
        dest: '<%= theme_build %>/Layout/Fonts/'
        destCss: '<%= theme_src %>/Layout/Sass/'
        classPrefix: 'icon-'
        options:
          relativeFontPath: '../Fonts/'
          hashes: false
          types: 'eot,woff,ttf,svg'
          stylesheet: 'scss'
          htmlDemo: false
          template: '<%= theme_src %>/Layout/Sass/_icons-template.scss'
          templateOptions:
            classPrefix: 'icon-'
    watch:
      coffee:
        files: ['<%= theme_src %>/Coffee/*']
        tasks: ['coffee']
      lib:
        files: ['<%= theme_src %>/Js/lib/*.js']
        options:
          livereload: true
      sass:
        files: ['<%= theme_src %>/Layout/**/*.scss']
        tasks: ['compass:dist', 'autoprefixer:dist']
      templates:
        files: ['<%= theme_src %>/Layout/Templates/**']
        tasks: [
          'copy:templates'
          'replace:scripts'
        ]
      images:
        files: ['<%= theme_src %>/Layout/Images/*.{jpg,gif,png}']
        tasks: [
          'imagemin'
        ]
      svg:
        files: ['<%= theme_src %>/Layout/Images/*.svg']
        tasks: [
          'svgmin'
        ]
      fonts:
        files: ['<%= theme_src %>/Layout/Fonts/**']
        tasks: [
          'fontgen'
          'clean:fontsCss'
        ]
      icons:
        files: ['<%= theme_src %>/Layout/icon-sources/**']
        tasks: [
          'iconfont'
        ]
      livereload:
        options:
          livereload: 35729
        files: [
          '<%= theme_build %>/**/*'
        ]

  # Load all grunt tasks
  require('load-grunt-tasks')(grunt);

  # Default task(s)
  grunt.registerTask 'default', [
    'serve'
  ]

  # Development tasks
  grunt.registerTask 'serve', [
    'replace:scripts'
    'watch'
  ]

  grunt.registerTask 'iconfont', [
    'webfont'
  ]

  # Production task
  grunt.registerTask 'build', [
    'clean:fonts'
    'clean:images'
    'iconfont'
    'fontgen'
    'copy:fonts'
    'clean:fontsCss'
    'svgmin'
    'imagemin'
    'compass:build'
    'autoprefixer'
    'coffee'
    'clean:templates'
    'copy:templates'
    'useminPrepare'
    'concat:generated'
    'uglify:generated'
    'usemin'
    'clean:dist'
  ]
