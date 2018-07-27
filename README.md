[![Build Status](https://travis-ci.org/koitoror/MyDiary.svg?branch=develop)](https://travis-ci.org/koitoror/MyDiary)
[![Coverage Status](https://coveralls.io/repos/github/koitoror/MyDiary/badge.svg?branch=develop)](https://coveralls.io/github/koitoror/MyDiary?branch=develop)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/dfd1f513767a4227aa2202c14a7f4c59)](https://www.codacy.com/app/koitoror/MyDiary?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=koitoror/MyDiary&amp;utm_campaign=Badge_Grade)

# MyDiary
This App helps you to Maintain A Daily Diary of Events as Entries
Check Your Entries - Add, View , Delete 
with an option to - Register & Sign Up.


## Requirements
It is recommended that you have the following set up on your local environment before getting started

1. [python 3.x](https://www.python.org/downloads/)
2. [Git](https://git-scm.com)
3. Working browser or [Postman](https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?utm_source=chrome-app-launcher-info-dialog)

## Installation
For the UI designs to work you need a working browser like google chrome or internet explorer

Clone the repository into your local environment

```
git clone git@github.com:koitoror/MyDiary.git
```

Change directory into MyDiary

```
cd MyDiary/designs/UI
```

Run `index.html` file in your browser

UI link to gh-pages
```
https://koitoror.github.io/UI/```


## API Installation
To set up MyDiary API, make sure that you have python3, postman and pip installed.

Use [virtualenv](http://www.pythonforbeginners.com/basics/how-to-use-python-virtualenv) for an isolated working environment.

Clone the Repo into a folder of your choice
```
git clone https://github.com/koitoror/MyDiary.git
```

Create a virtual enviroment.
```
virtualenv venv --python=python3
```

Navigate to api folder.
```
cd MyDiary
```

Install the packages.
```

## API Usage

To get the app running...

```bash
```bash
$ python server.py
$ )flask run))
```

Open root path in your browser to test the endpoints. 
You can also use Postman or any other agent to test the endpoints
my connect to external database using postgres to facilitate viewing from the diary

## Test

To run your tests use

```bash
$ nosetests
```

To test endpoints manually fire up postman and run the following endpoints

**EndPoint** | **Functionality**
--- | ---

POST  `/api/v1/entries` | Register/add/create entries
PUT `/api/v1/entries/<entriesId>` | Updates a entries profile
DELETE `/api/v1/entries/<entriesId>` | Remove a entries
GET  `/api/v1/entries` | Retrieves/Get all entries
GET  `/api/v1/entries/<entriesId>` | Get single entries 


# API Documentation
Once app server is running open root URL from browser to read documumentation or View API documentation from
```
https://mydiary1.docs.apiary.io
```