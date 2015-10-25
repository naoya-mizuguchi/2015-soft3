#!/usr/bin/env python

import rospy
import sys, time
import unittest
from rostopic import _rostopic_info

## A sample python unit test
class TestCheckTopic(unittest.TestCase):
    def test_check_topic(self):
        time.sleep(3)
        topic = rospy.get_param("/test/topic")
        info = _rostopic_info(topic)
        self.assertTrue(not info)

if __name__ == '__main__':
    import rostest
    rostest.rosrun('enshu_20151021', 'test_check_topic', TestCheckTopic)
