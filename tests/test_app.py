import requests


def test_api_call():
    r = requests.get("http://0.0.0.0:8000/")

    assert r.status_code == 200
    assert r.json() == {"status": "ok"}
