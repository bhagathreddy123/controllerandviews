Rails version: 6.0.3.5
Ruby version: ruby 2.7.1p83
Store Data in Cookies
--------------------
HTML: Stateless
each HTTP request is distinct.
State is not preserved. no previous information.
we can keep track of data between requests using
Cookies
Sessions.
===============
Cookies:
 Cookies allow us to preserve the state of information.

webserver sends data to the browser, which then saves it in a cookie.
browser sends cookie data with each future request to that web server.

Cookies in rails

cookies[:username] = "Jsmith"

@username = cookies[:username]

complex way of setting cookie below.


cookies[:username] = {
	:value => "jsmith",
	:expire => 1.week.from_now
}

Limitation of cookies:

maximum data size: 4K

Resides on the users computer.
can be deleted, read or altered.

Advice on Cookies
__________________
user cookies to preserve state and for efficiency.
store onlly small piece of data 
do not store model instance.
do not store sensitive data.
do not trust cookie data.

Sessions

Web server sends a session ID to the browser, which then saves it in a cookie
Browser sends session ID with each future request to that web server.

web server uses session ID to locate the session file.

Common Limitations of Sessions.
Require time to retrieve the session file.
Session files accumulate.
Session cookie resides  on the users computer
Session cookie can be deleted or hijacked.

clear the Log files
rails log:clear
https://github.com/LinkedInLearning/ror6-controllersandviews_2309293
logger.debug("The name is #{@subject.name}")
logger.info("Starting the subject update....")
logger.warn("Invalid log in By #{params[:username]}")
logger.error
logger.fatal

$ rails g rspec:install
$ rspec or bundle exec rspec or  rake spec or rake

rake do more setup for run test than rspec does.
 rspec spec does not prepare test database
 rake spec prepare test database.

 Transactional Examples
 Each example runs in a transaction
 Database changes are rolled back at the end.

 spec/rails_helper.rb
 --------------
 config.use_transactional_fixtures=true

 Transactional Examples
 -----------------------
 Data modified by before(:example) is rolled back.
 Data modified by before(:context) is not rolled back.
 improve performance for example group.
 use after(:context) tp revert modified data.

 before(:context) to make data cleanup our responsibility


 desscribe Customer do
  before(:context) do 
   @customer = Customer.create(:name => 'Jane smith')
  end

  after(:context) {@customer.destroy}
 end

 Model Specs
  May need to call #reload after database changes
  Lazy-executing #let vs. eager-executing #let!
  scopes: match_array works with ActiveRecord::Relations

  Associations, validations
  -------------------------
  github.com/thoughtbot/shoulda-matchers

  ActiveRecord test doubles
  ---------------------------
  github.com/rspec/rspec-activemodel-mocks

  mock_model, stub_model

  Helper Specs
  ------------

  Easy to work with
  No request/response
  helper -  (this is aspecial obj)
  helper object includes all of the helper modules 
  assign instance variables they are present when ever we are using this helper methods using in view.

controller Specs
----------------
Controllers are Ruby classes
Rails creates controller instances for us
Depends on request/response.
Render, redirect
set values in cookies and sessions
Controller Spec HTTP Requests
---------------------------
get(action, options)
post(action, options)
patch(action, options)
put(action, options)
delete(action, options)

Controller Spec HTTP Requests
===========================

get(:index)
get("/customers/index")
get(:index, :page => 2, :search => 'Smith')
post(:create, :customer => {:first_name => 'Jane', :last_name => 'Smith', :country => 'US'})

Controller Spec Attributes
--------------------------

controller 
request
response

assigns - assigns is used to set up instance variable and shows up in assigns hash.

session : object is saved in sessions file

flash : flash objects or flash messages currently in session

cookies : cookies set back to the user on request
assigns has been extracted to a gem. To continue using it, add gem 'rails-controller-testing' to your Gemfile

controller Spec Attributes

assigns['subjects']
assigns[:subjects] # does not work

assigns('subjects')
assigns(:subjects)

cookies['logged_in']
request.cookies['logged_in']
response.cookies['logged_in']

controller Spec Response Matchers

expect(response).to render_template( template )
expect(response).to redirect_to( path )
expect(response).to have_http_status( status )

Rails Status Codes
-----------------
200, :ok
403, :forbidden
404, :not_found
301, :moved_permanently
302, :found
500, :internal_server_error
502, :bad_gateway

View Specs
=============
make instance variable assignments
Reder the template
set expetations on what is returned

view
assign
render
rendered









