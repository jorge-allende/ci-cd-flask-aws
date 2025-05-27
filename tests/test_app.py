import pytest
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from my_flask_app.app import app

def test_root_route():
    tester = app.test_client()
    response = tester.get("/")
    assert response.status_code == 200
    assert b"Hello, World from AWS CI/CD" in response.data 