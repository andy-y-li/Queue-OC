#import "queue.h"
@implementation NSQueue
@synthesize count;
- (id)init
{
    if( self=[super init] )
    {
        m_array = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)dealloc {
    [m_array release];
    [super dealloc];
}
- (void)enqueue:(id)anObject
{
    [m_array addObject:anObject];
}
- (id)dequeue
{
    id obj = nil;
    if(m_array.count > 0)
    {
        obj = [[[m_array objectAtIndex:0]retain]autorelease];
        [m_array removeObjectAtIndex:0];
    }
    return obj;
}
- (void)clear
{
    [m_array removeAllObjects];
}

- (int) count{
    return [m_array count];
}

- (BOOL) isEmpty
{
    return [m_array count] == 0;
}

@end
