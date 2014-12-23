
class SceneTest < Android::App::Activity
  def onCreate( savedInstanceState )
    super

    @director = Org::Cocos2d::Nodes::CCDirector::sharedDirector

    requestWindowFeature( Android::View::Window::FEATURE_NO_TITLE )
    getWindow.setFlags( Android::View::WindowManager::LayoutParams::FLAG_FULLSCREEN,
                        Android::View::WindowManager::LayoutParams::FLAG_FULLSCREEN )

    # I didn't get as far as setting up the CCGLSurfaceView
    #@gl_surface_view = Org::Cocos2d::Opengl::CCGLSurfaceView.new( self )
    #
    #setContentView( @gl_surface_view )
    #applicationDidFinishLaunching( self, @gl_surface_view )
  end

  def onStart
    super

    #@director.attachInView( @gl_surface_view )
    #@director.setDisplayFPS( true )
    #@director.setAnimationInterval( 1.0 / 60.0 )
  end

  def onPause
    super
    @director.pause
  end

  def onResume
    super
    @director.resume
  end

  def onStop
    super
    @director.end
  end
end