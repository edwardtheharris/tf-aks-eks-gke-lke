#!/usr/bin/env python3
"""This is the test module for hello world."""

import unittest

import hello_world

class HelloWorldTestCase(unittest.TestCase):
    """Hello World test class."""

    def test_hello_world(self):
        """Test the hello world function."""
        result = hello_world.hello_world()
        self.assertEqual(result, "Hello, world!")

    def test_multiply(self):
        """Test multiply because we copied this from the docs."""
        self.assertEqual((0 * 10), 0)
        self.assertEqual((5 * 8), 40)

if __name__ == '__main__':
    unittest.main()
