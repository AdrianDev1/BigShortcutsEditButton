@interface WFLibraryEllipsisButton : UIView
@property (nonatomic, assign, readwrite) CGRect frame;
@end 

%hook WFLibraryEllipsisButton
- (void) layoutSubviews {
	%orig;
	CGRect newFrame = self.frame; 
	newFrame.origin.x = 115;
	newFrame.origin.y = 10;
	newFrame.size.width = 40; 
	newFrame.size.height = 40;
	self.frame = newFrame;
}
%end