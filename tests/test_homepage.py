from django.test import TestCase


class HomePageTests(TestCase):
    def test_base(self):
        self.assertEqual(1, 1)
