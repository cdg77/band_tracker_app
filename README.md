# _{Band Tracker}_

##### _{A Program to track bands and the venues where they've played concerts.}, {August 28th, 2015}_

#### By _**{Carlo De Gregorio}**_

## Description

_{A Program to track bands and the venues where they've played concerts.
### User Stories:
* _As a user, I want to be able to add, update, delete and list bands.
* _As a user, I want to be able to add venues (don't worry about updating, listing or destroying venues).
* _As a user, I want to be able to add venues to a band to show where they have played (possibly with checkboxes).
* _As a user, I want to be able to see all of the venues a band has played on the individual band page.
* _As a user, I want band names and venues to be saved with a capital letter no matter how I enter them.
* _As a user, I do not want bands and venues to be saved if I enter a blank name.
}_

##### _****{This app is for my testing and educational purposes. I cannot promise anything... Use at your own risk!}****_


## Setup

* _Clone the repo_
* _bundle install_
* _use Rake & ActiveRecord to run migrations and setup your database_
* _I named my database: band_tracker_
* _3 Tables:
  **bands has name column
  **venues has name column
  **bands_venues has band_id and venue_id columns_


_{Leave nothing to chance! You want it to be easy for potential employers and collaborators to run your app. Do I need to run a server? How should I set up my databases? Are there other applications this app depends on?}_

## Technologies Used

_{Ruby, POSTGRESS, SQL, Capybara, Sinatra, RSpec, ActiveRecord, Rake.}_

### Legal

*{This is boilerplate legal language. Read through it, and if you like it, use it. There are other license agreements online, but you can generally copy and paste this.}*

Copyright (c) 2015 **_{Carlo De Gregorio}_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
