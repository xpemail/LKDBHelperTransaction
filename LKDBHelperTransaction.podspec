 
Pod::Spec.new do |s|
 

  s.name         = "LKDBHelperTransaction"
  s.version      = "1.0.4"
  s.summary      = "LKDBHelper 扩展修改了一下，简化使用方式(依赖LKDB1.4)"
 
  s.homepage     = "https://github.com/xpemail/LKDBHelperTransaction"
 
  s.license      = "MIT"
 
  s.author             = { "wuxiande" => "xd.wu@msn.com" } 
  s.ios.deployment_target = "6.0" 
  
  s.source = { :git => 'https://github.com/xpemail/LKDBHelperTransaction.git' , :tag => '1.0.4'}
 
  s.requires_arc = true
  
  s.subspec 'Transaction' do |ds|
    
  	ds.source_files = '*.{h,m,mm}'   
    ds.exclude_files = "MyTest.{h,m}" 
    		 
  end
  
  s.subspec 'DYPersistence' do |ds|
    
        ds.dependency 'LKDBHelperTransaction/Transaction'
  	     ds.source_files = 'DYPersistence/*.{h,m,mm}'  
    		 
  end
   
  
  s.compiler_flags = '-w'
  
  
  s.dependency 'LKDBHelper'

end
