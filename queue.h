/*
 * =====================================================================================
 *
 *       Filename:  queue.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  05/15/18 02:59:20
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  Andy (https://github.com/andy-y-li), andy_y_li@163.com
 *        Company:  gk
 *
 * =====================================================================================
 */

#import <Foundation/Foundation.h>
@interface NSQueue : NSObject {
NSMutableArray* m_array;
}
- (void)enqueue:(id)anObject;
- (id)dequeue;
- (void)clear;
- (BOOL) isEmpty;
@property (nonatomic, readonly) int count;
@end

