# Park API

#### Park API

#### By Kyle Kay-Perez

#### Shortcuts
- [Technologies Used](#technologies-used)
- [Description](#description)
- [Setup/Installation Requirements](#setup/installation-requirements)
- [API Documentation](#api-documentation)
- [License](#license)
- [Contact Information](#contact-information)


## Technologies Used

* [Markdown](https://www.markdownguide.org/)
* [VS studio](https://code.visualstudio.com/)
* [Bootstrap](https://getbootstrap.com/)
* [Ruby](https://www.ruby-lang.org/en/)
* [Postgresql](https://www.postgresql.org/)
* [Rails](https://rubyonrails.org/)
* [Ruby Gems](https://rubygems.org/)
* [Postman](https://www.postman.com/)

## Description

This is an API to test routes and search parks

## Setup/Installation Requirements

* Ruby is required, follow the download instructions here [Ruby](https://www.ruby-lang.org/en/)
* Install bundler in your terminal with "gem install bundler"
* Install postgres if not already installed and run the terminal command "postgres" to open a SQL server.
* Download database from github repository[Park API](https://github.com/professional-pigeon/Parks-API)
* Navigate to the top level of the directory and run "bundle install" in your terminal to install dependencies
* Run "rake db:create" and then "rake db:migrate" to create a database and migrate tables.
* Run "rake db:seed" to create instances of the Park object you can query.
* Open Postman and make requests to the rails server you started (localhost:3000 is the default)
  - [Instructions for request types](#api-documentation)

## API Documentation

Get Routes
  * To get all Parks GET "http://localhost:3000/parks"
    - There are a few custimizations for searching
      * You can search by state, type of park, or both by passing the keys "state" and "park_type" into the keys value of you're search
      * park_type only has two options "State Park" and "National Park"
        * ex GET "http://localhost:3000/parks?state=wisconsin"
        * ex GET "http://localhost:3000/parks?park_type=state park"
        * ex GET "http://localhost:3000/parks/148?park_type=State Park&state=Wisconsin"
      * You can paginate the results by selecting the page of results to view a page has 20 results.
        * ex GET "http://localhost:3000/parks?page=2"
  * Get an individual Park by it's id: GET "http://localhost:3000/parks/(park id)"
  * Get a random Park: GET http://localhost:3000/parks/random

Post Routes
  * To create a park use a post request and pass in all required params as key-value values
  * Required params
    - park_name => "String"
    - park_type => "State Park" or "National Park"
    - city => "String"
    - state => "String"
    - description => "String"
  * You can pass the params in either the body or the header
    - ex POST "http://localhost:3000/parks?park_name=Wibble Wobble&park_type=State Park&city=Eau Claire&state=Wisconsin&description=An unbalanced park next to the balanced Eau Claire"

Patch routes
  * To update a Park use a patch request and pass in any number of params as key-value pairs to change those vlaues.
  * Must target an existing park
  * You can pass the params in either the body or the header
    - ex PATCH http://localhost:3000/parks/(Park id)?park_name=Wibble Wobble"

Delete Routes
  * Delete a route by targeting a specific Park with a delete request
    - ex DELETE http://localhost:3000/parks/(Park id)


## License

MIT License

Copyright (c) Kyle Kay-Perez 2021

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contact Information

Kyle.KayPerez@gmail.com