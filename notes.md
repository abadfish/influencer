MENTOR APP

1. What is the purpose of this app?


2. What features do we need to implement?
   * Authentication (devise) -> send emails
   * upload profile picture (peperclip)
   * Omniauth (linkedin & ✓ Facebook)
   * Roles: Mentors and mentees (pundit)
   * Messaging between users (mailboxer)
   * search for mentors by zipcode -> user need to have a zipcode arg (geocoder or geokit-rails)
   * in app notifications if possible
   * news feed (posts by users) => not too long, links, info, etc.
   * post comments
   * Mentor requests
   * close meetups acording to current_user zipcode

3. Name: "Influencer"

4. Registration: *Mentee*
  name,
  last name,
  email,
  password.

  redirect after Registration -> *More Info*
  - “let’s match you with the right mentor!”
  * Phase in the business cycle,
  * concentration
  * industry
  * What they would like help with
  * zipcode

  Registration: *Mentor* (Checkbox on signup)
    name,
    last name,
    email,
    password.

    redirect after Registration -> *More Info*
    - “let’s match you with the right mentor!”
    * industry
    * concentration
    * area of expertise
    * zipcode


gem 'aws-sdk', '~> 2.3' deleted incompatible with paperclip
