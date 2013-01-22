Pod::Spec.new do|s|
    s.name='MTManagedDocument'
    s.version='0.1'
    s.author = 'Alec Robinson'
    s.license = {:type => 'Apache License, Version 2.0', :file => 'LICENSE'}
    s.homepage = 'https://github.com/arobinson5/MTManagedDocument'
    s.summary="UIManagedDocument subclass that allows the user to specify which Managed Object Model to use at init."
    s.description="UIManagedDocument subclass that allows the user to specify which Managed Object Model to use at init. This class is helpful if your application has multiple managed object models and you don't want these models merged when you create a UIManagedDocument"
    s.source={:git=>'https://github.com/arobinson5/MTManagedDocument.git', :tag=>'0.1'}
    s.source_files='MTManagedDocument/*.{h,m}'
    s.platform = :ios, 6.0
    s.framework = 'UIKit', 'Foundation', 'CoreData'
    s.requires_arc = true
    s.prefix_header_file = 'MTManagedDocument/MTManagedDocument-Prefix.pch'
end
