
#import <Foundation/Foundation.h>
#import "queue.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSQueue *q = [[NSQueue alloc] init];

        [q enqueue:@"Andy"];
        [q enqueue:@"Joe"];
        [q enqueue:@"Peter"];
        [q enqueue:@"Jerry"];

        do {
            NSLog(@"Name:%@", [q dequeue]);
        } while(!q.isEmpty);
    }
    return 0;
}

